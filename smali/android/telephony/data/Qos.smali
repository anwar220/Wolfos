# classes3.dex

.class public abstract Landroid/telephony/data/Qos;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/Qos$QosBandwidth;,
        Landroid/telephony/data/Qos$QosType;
    }
.end annotation


# static fields
.field static final QOS_TYPE_EPS:I = 0x1

.field static final QOS_TYPE_NR:I = 0x2


# instance fields
.field final downlink:Landroid/telephony/data/Qos$QosBandwidth;

.field final type:I

.field final uplink:Landroid/telephony/data/Qos$QosBandwidth;


# direct methods
.method constructor <init>(ILandroid/telephony/data/Qos$QosBandwidth;Landroid/telephony/data/Qos$QosBandwidth;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/data/Qos;->type:I

    iput-object p2, p0, Landroid/telephony/data/Qos;->downlink:Landroid/telephony/data/Qos$QosBandwidth;

    iput-object p3, p0, Landroid/telephony/data/Qos;->uplink:Landroid/telephony/data/Qos$QosBandwidth;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/Qos;->type:I

    const-class v0, Landroid/telephony/data/Qos$QosBandwidth;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/Qos$QosBandwidth;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/Qos$QosBandwidth;

    iput-object v0, p0, Landroid/telephony/data/Qos;->downlink:Landroid/telephony/data/Qos$QosBandwidth;

    const-class v0, Landroid/telephony/data/Qos$QosBandwidth;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/Qos$QosBandwidth;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/Qos$QosBandwidth;

    iput-object v0, p0, Landroid/telephony/data/Qos;->uplink:Landroid/telephony/data/Qos$QosBandwidth;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    move-object v1, p1

    check-cast v1, Landroid/telephony/data/Qos;

    iget v2, p0, Landroid/telephony/data/Qos;->type:I

    iget v3, v1, Landroid/telephony/data/Qos;->type:I

    if-ne v2, v3, :cond_22

    iget-object v2, p0, Landroid/telephony/data/Qos;->downlink:Landroid/telephony/data/Qos$QosBandwidth;

    iget-object v3, v1, Landroid/telephony/data/Qos;->downlink:Landroid/telephony/data/Qos$QosBandwidth;

    invoke-virtual {v2, v3}, Landroid/telephony/data/Qos$QosBandwidth;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/telephony/data/Qos;->uplink:Landroid/telephony/data/Qos$QosBandwidth;

    iget-object v3, v1, Landroid/telephony/data/Qos;->uplink:Landroid/telephony/data/Qos$QosBandwidth;

    invoke-virtual {v2, v3}, Landroid/telephony/data/Qos$QosBandwidth;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public getDownlinkBandwidth()Landroid/telephony/data/Qos$QosBandwidth;
    .registers 2

    iget-object v0, p0, Landroid/telephony/data/Qos;->downlink:Landroid/telephony/data/Qos$QosBandwidth;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/Qos;->type:I

    return v0
.end method

.method public getUplinkBandwidth()Landroid/telephony/data/Qos$QosBandwidth;
    .registers 2

    iget-object v0, p0, Landroid/telephony/data/Qos;->uplink:Landroid/telephony/data/Qos$QosBandwidth;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/data/Qos;->downlink:Landroid/telephony/data/Qos$QosBandwidth;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/Qos;->uplink:Landroid/telephony/data/Qos$QosBandwidth;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(ILandroid/os/Parcel;I)V
    .registers 5

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/data/Qos;->downlink:Landroid/telephony/data/Qos$QosBandwidth;

    invoke-virtual {p2, v0, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/data/Qos;->uplink:Landroid/telephony/data/Qos$QosBandwidth;

    invoke-virtual {p2, v0, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
