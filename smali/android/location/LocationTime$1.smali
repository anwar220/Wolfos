# classes2.dex

.class Landroid/location/LocationTime$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/LocationTime;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/LocationTime;
    .registers 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    new-instance v4, Landroid/location/LocationTime;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/location/LocationTime;-><init>(JJ)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/LocationTime$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/LocationTime;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/LocationTime;
    .registers 3

    new-array v0, p1, [Landroid/location/LocationTime;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/LocationTime$1;->newArray(I)[Landroid/location/LocationTime;

    move-result-object p1

    return-object p1
.end method
