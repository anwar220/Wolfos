# classes2.dex

.class Landroid/net/vcn/VcnUnderlyingNetworkSpecifier$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    new-instance v1, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;

    invoke-direct {v1, v0}, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;-><init>([I)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;
    .registers 3

    new-array v0, p1, [Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnUnderlyingNetworkSpecifier$1;->newArray(I)[Landroid/net/vcn/VcnUnderlyingNetworkSpecifier;

    move-result-object p1

    return-object p1
.end method
