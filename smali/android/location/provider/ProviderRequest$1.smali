# classes2.dex

.class Landroid/location/provider/ProviderRequest$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/ProviderRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/provider/ProviderRequest;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/provider/ProviderRequest;
    .registers 16

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v11, v0

    if-nez v0, :cond_10

    sget-object v0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    return-object v0

    :cond_10
    new-instance v13, Landroid/location/provider/ProviderRequest;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/WorkSource;

    const/4 v10, 0x0

    move-object v0, v13

    move-wide v1, v11

    invoke-direct/range {v0 .. v10}, Landroid/location/provider/ProviderRequest;-><init>(JIJZZZLandroid/os/WorkSource;Landroid/location/provider/ProviderRequest-IA;)V

    return-object v13
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/provider/ProviderRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/provider/ProviderRequest;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/provider/ProviderRequest;
    .registers 3

    new-array v0, p1, [Landroid/location/provider/ProviderRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/provider/ProviderRequest$1;->newArray(I)[Landroid/location/provider/ProviderRequest;

    move-result-object p1

    return-object p1
.end method
