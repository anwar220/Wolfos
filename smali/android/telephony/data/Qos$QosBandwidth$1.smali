# classes3.dex

.class Landroid/telephony/data/Qos$QosBandwidth$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/Qos$QosBandwidth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/data/Qos$QosBandwidth;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/data/Qos$QosBandwidth;
    .registers 4

    new-instance v0, Landroid/telephony/data/Qos$QosBandwidth;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/data/Qos$QosBandwidth;-><init>(Landroid/os/Parcel;Landroid/telephony/data/Qos$QosBandwidth-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/data/Qos$QosBandwidth$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/data/Qos$QosBandwidth;
    .registers 3

    new-array v0, p1, [Landroid/telephony/data/Qos$QosBandwidth;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/data/Qos$QosBandwidth$1;->newArray(I)[Landroid/telephony/data/Qos$QosBandwidth;

    move-result-object p1

    return-object p1
.end method
