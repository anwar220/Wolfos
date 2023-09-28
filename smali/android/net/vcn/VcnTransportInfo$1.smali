# classes2.dex

.class Landroid/net/vcn/VcnTransportInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnTransportInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/vcn/VcnTransportInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/vcn/VcnTransportInfo;
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const-class v1, Landroid/net/wifi/WifiInfo;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_13

    const/4 v3, -0x1

    if-ne v0, v3, :cond_13

    return-object v2

    :cond_13
    new-instance v3, Landroid/net/vcn/VcnTransportInfo;

    invoke-direct {v3, v1, v0, v2}, Landroid/net/vcn/VcnTransportInfo;-><init>(Landroid/net/wifi/WifiInfo;ILandroid/net/vcn/VcnTransportInfo-IA;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnTransportInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/vcn/VcnTransportInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/vcn/VcnTransportInfo;
    .registers 3

    new-array v0, p1, [Landroid/net/vcn/VcnTransportInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnTransportInfo$1;->newArray(I)[Landroid/net/vcn/VcnTransportInfo;

    move-result-object p1

    return-object p1
.end method
