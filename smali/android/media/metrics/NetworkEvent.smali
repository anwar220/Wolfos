# classes2.dex

.class public final Landroid/media/metrics/NetworkEvent;
.super Landroid/media/metrics/Event;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/metrics/NetworkEvent$Builder;,
        Landroid/media/metrics/NetworkEvent$NetworkType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/metrics/NetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final NETWORK_TYPE_2G:I = 0x4

.field public static final NETWORK_TYPE_3G:I = 0x5

.field public static final NETWORK_TYPE_4G:I = 0x6

.field public static final NETWORK_TYPE_5G_NSA:I = 0x7

.field public static final NETWORK_TYPE_5G_SA:I = 0x8

.field public static final NETWORK_TYPE_ETHERNET:I = 0x3

.field public static final NETWORK_TYPE_OFFLINE:I = 0x9

.field public static final NETWORK_TYPE_OTHER:I = 0x1

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_WIFI:I = 0x2


# instance fields
.field private final mNetworkType:I

.field private final mTimeSinceCreatedMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/metrics/NetworkEvent$1;

    invoke-direct {v0}, Landroid/media/metrics/NetworkEvent$1;-><init>()V

    sput-object v0, Landroid/media/metrics/NetworkEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IJLandroid/os/Bundle;)V
    .registers 6

    invoke-direct {p0}, Landroid/media/metrics/Event;-><init>()V

    iput p1, p0, Landroid/media/metrics/NetworkEvent;->mNetworkType:I

    iput-wide p2, p0, Landroid/media/metrics/NetworkEvent;->mTimeSinceCreatedMillis:J

    if-nez p4, :cond_b

    const/4 v0, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {p4}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v0

    :goto_f
    iput-object v0, p0, Landroid/media/metrics/NetworkEvent;->mMetricsBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(IJLandroid/os/Bundle;Landroid/media/metrics/NetworkEvent-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/metrics/NetworkEvent;-><init>(IJLandroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    invoke-direct {p0}, Landroid/media/metrics/Event;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    iput v0, p0, Landroid/media/metrics/NetworkEvent;->mNetworkType:I

    iput-wide v1, p0, Landroid/media/metrics/NetworkEvent;->mTimeSinceCreatedMillis:J

    iput-object v3, p0, Landroid/media/metrics/NetworkEvent;->mMetricsBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/metrics/NetworkEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/metrics/NetworkEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static networkTypeToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_26

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x9
    const-string v0, "NETWORK_TYPE_OFFLINE"

    return-object v0

    :pswitch_b  #0x8
    const-string v0, "NETWORK_TYPE_5G_SA"

    return-object v0

    :pswitch_e  #0x7
    const-string v0, "NETWORK_TYPE_5G_NSA"

    return-object v0

    :pswitch_11  #0x6
    const-string v0, "NETWORK_TYPE_4G"

    return-object v0

    :pswitch_14  #0x5
    const-string v0, "NETWORK_TYPE_3G"

    return-object v0

    :pswitch_17  #0x4
    const-string v0, "NETWORK_TYPE_2G"

    return-object v0

    :pswitch_1a  #0x3
    const-string v0, "NETWORK_TYPE_ETHERNET"

    return-object v0

    :pswitch_1d  #0x2
    const-string v0, "NETWORK_TYPE_WIFI"

    return-object v0

    :pswitch_20  #0x1
    const-string v0, "NETWORK_TYPE_OTHER"

    return-object v0

    :pswitch_23  #0x0
    const-string v0, "NETWORK_TYPE_UNKNOWN"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23  #00000000
        :pswitch_20  #00000001
        :pswitch_1d  #00000002
        :pswitch_1a  #00000003
        :pswitch_17  #00000004
        :pswitch_14  #00000005
        :pswitch_11  #00000006
        :pswitch_e  #00000007
        :pswitch_b  #00000008
        :pswitch_8  #00000009
    .end packed-switch
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

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_26

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/metrics/NetworkEvent;

    iget v3, p0, Landroid/media/metrics/NetworkEvent;->mNetworkType:I

    iget v4, v2, Landroid/media/metrics/NetworkEvent;->mNetworkType:I

    if-ne v3, v4, :cond_24

    iget-wide v3, p0, Landroid/media/metrics/NetworkEvent;->mTimeSinceCreatedMillis:J

    iget-wide v5, v2, Landroid/media/metrics/NetworkEvent;->mTimeSinceCreatedMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    :goto_25
    return v0

    :cond_26
    :goto_26
    return v1
.end method

.method public getMetricsBundle()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/media/metrics/NetworkEvent;->mMetricsBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getNetworkType()I
    .registers 2

    iget v0, p0, Landroid/media/metrics/NetworkEvent;->mNetworkType:I

    return v0
.end method

.method public getTimeSinceCreatedMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/media/metrics/NetworkEvent;->mTimeSinceCreatedMillis:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/metrics/NetworkEvent;->mNetworkType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/media/metrics/NetworkEvent;->mTimeSinceCreatedMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkEvent { networkType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/NetworkEvent;->mNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeSinceCreatedMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/NetworkEvent;->mTimeSinceCreatedMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/media/metrics/NetworkEvent;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/media/metrics/NetworkEvent;->mTimeSinceCreatedMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/media/metrics/NetworkEvent;->mMetricsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
