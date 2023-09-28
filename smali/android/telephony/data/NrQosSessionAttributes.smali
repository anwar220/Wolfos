# classes3.dex

.class public final Landroid/telephony/data/NrQosSessionAttributes;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/net/QosSessionAttributes;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/NrQosSessionAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final m5Qi:I

.field private final mAveragingWindow:J

.field private final mGuaranteedDownlinkBitRate:J

.field private final mGuaranteedUplinkBitRate:J

.field private final mMaxDownlinkBitRate:J

.field private final mMaxUplinkBitRate:J

.field private final mQfi:I

.field private final mRemoteAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/telephony/data/NrQosSessionAttributes;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/data/NrQosSessionAttributes;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/telephony/data/NrQosSessionAttributes$1;

    invoke-direct {v0}, Landroid/telephony/data/NrQosSessionAttributes$1;-><init>()V

    sput-object v0, Landroid/telephony/data/NrQosSessionAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIJJJJJLjava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJJJJ",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "remoteAddress must be non-null"

    invoke-static {p13, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput p1, p0, Landroid/telephony/data/NrQosSessionAttributes;->m5Qi:I

    iput p2, p0, Landroid/telephony/data/NrQosSessionAttributes;->mQfi:I

    iput-wide p3, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxDownlinkBitRate:J

    iput-wide p5, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxUplinkBitRate:J

    iput-wide p7, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    iput-wide p9, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    iput-wide p11, p0, Landroid/telephony/data/NrQosSessionAttributes;->mAveragingWindow:J

    invoke-static {p13}, Landroid/telephony/data/NrQosSessionAttributes;->copySocketAddresses(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/data/NrQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->m5Qi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mQfi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxDownlinkBitRate:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxUplinkBitRate:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mAveragingWindow:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_37
    if-ge v2, v0, :cond_6b

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    :try_start_41
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/net/UnknownHostException; {:try_start_41 .. :try_end_4d} :catch_4e

    goto :goto_68

    :catch_4e
    move-exception v5

    sget-object v6, Landroid/telephony/data/NrQosSessionAttributes;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unable to unparcel remote address at index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_6b
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/data/NrQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/data/NrQosSessionAttributes-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/NrQosSessionAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static copySocketAddresses(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    goto :goto_9

    :cond_21
    return-object v0
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

    if-eqz p1, :cond_64

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_64

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/NrQosSessionAttributes;

    iget v3, p0, Landroid/telephony/data/NrQosSessionAttributes;->m5Qi:I

    iget v4, v2, Landroid/telephony/data/NrQosSessionAttributes;->m5Qi:I

    if-ne v3, v4, :cond_62

    iget v3, p0, Landroid/telephony/data/NrQosSessionAttributes;->mQfi:I

    iget v4, v2, Landroid/telephony/data/NrQosSessionAttributes;->mQfi:I

    if-ne v3, v4, :cond_62

    iget-wide v3, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxUplinkBitRate:J

    iget-wide v5, v2, Landroid/telephony/data/NrQosSessionAttributes;->mMaxUplinkBitRate:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_62

    iget-wide v3, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxDownlinkBitRate:J

    iget-wide v5, v2, Landroid/telephony/data/NrQosSessionAttributes;->mMaxDownlinkBitRate:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_62

    iget-wide v3, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    iget-wide v5, v2, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_62

    iget-wide v3, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    iget-wide v5, v2, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_62

    iget-wide v3, p0, Landroid/telephony/data/NrQosSessionAttributes;->mAveragingWindow:J

    iget-wide v5, v2, Landroid/telephony/data/NrQosSessionAttributes;->mAveragingWindow:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_62

    iget-object v3, p0, Landroid/telephony/data/NrQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Landroid/telephony/data/NrQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_62

    iget-object v3, p0, Landroid/telephony/data/NrQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/data/NrQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_62

    goto :goto_63

    :cond_62
    move v0, v1

    :goto_63
    return v0

    :cond_64
    :goto_64
    return v1
.end method

.method public getBitRateWindowDuration()Ljava/time/Duration;
    .registers 3

    iget-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mAveragingWindow:J

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getGuaranteedDownlinkBitRateKbps()J
    .registers 3

    iget-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    return-wide v0
.end method

.method public getGuaranteedUplinkBitRateKbps()J
    .registers 3

    iget-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    return-wide v0
.end method

.method public getMaxDownlinkBitRateKbps()J
    .registers 3

    iget-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxDownlinkBitRate:J

    return-wide v0
.end method

.method public getMaxUplinkBitRateKbps()J
    .registers 3

    iget-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxUplinkBitRate:J

    return-wide v0
.end method

.method public getQosFlowIdentifier()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mQfi:I

    return v0
.end method

.method public getQosIdentifier()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->m5Qi:I

    return v0
.end method

.method public getRemoteAddresses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/data/NrQosSessionAttributes;->m5Qi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/NrQosSessionAttributes;->mQfi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxUplinkBitRate:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxDownlinkBitRate:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/data/NrQosSessionAttributes;->mAveragingWindow:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/NrQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    iget v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->m5Qi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mQfi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxDownlinkBitRate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mMaxUplinkBitRate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedDownlinkBitRate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mGuaranteedUplinkBitRate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mAveragingWindow:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/telephony/data/NrQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_2d
    if-ge v1, v0, :cond_4c

    iget-object v2, p0, Landroid/telephony/data/NrQosSessionAttributes;->mRemoteAddresses:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_4c
    return-void
.end method
