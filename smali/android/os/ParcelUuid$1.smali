# classes3.dex

.class Landroid/os/ParcelUuid$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ParcelUuid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/ParcelUuid;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/ParcelUuid;
    .registers 8

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    new-instance v5, Landroid/os/ParcelUuid;

    invoke-direct {v5, v4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object v5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/ParcelUuid$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/ParcelUuid;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/ParcelUuid;
    .registers 3

    new-array v0, p1, [Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/ParcelUuid$1;->newArray(I)[Landroid/os/ParcelUuid;

    move-result-object p1

    return-object p1
.end method
