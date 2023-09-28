# classes2.dex

.class Landroid/location/GpsClock$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GpsClock;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsClock;
    .registers 5

    new-instance v0, Landroid/location/GpsClock;

    invoke-direct {v0}, Landroid/location/GpsClock;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v0, v1}, Landroid/location/GpsClock;->-$$Nest$fputmFlags(Landroid/location/GpsClock;S)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    invoke-static {v0, v1}, Landroid/location/GpsClock;->-$$Nest$fputmLeapSecond(Landroid/location/GpsClock;S)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GpsClock;->-$$Nest$fputmType(Landroid/location/GpsClock;B)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsClock;->-$$Nest$fputmTimeInNs(Landroid/location/GpsClock;J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsClock;->-$$Nest$fputmTimeUncertaintyInNs(Landroid/location/GpsClock;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsClock;->-$$Nest$fputmFullBiasInNs(Landroid/location/GpsClock;J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsClock;->-$$Nest$fputmBiasInNs(Landroid/location/GpsClock;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsClock;->-$$Nest$fputmBiasUncertaintyInNs(Landroid/location/GpsClock;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsClock;->-$$Nest$fputmDriftInNsPerSec(Landroid/location/GpsClock;D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GpsClock;->-$$Nest$fputmDriftUncertaintyInNsPerSec(Landroid/location/GpsClock;D)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/GpsClock$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsClock;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/GpsClock;
    .registers 3

    new-array v0, p1, [Landroid/location/GpsClock;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/GpsClock$1;->newArray(I)[Landroid/location/GpsClock;

    move-result-object p1

    return-object p1
.end method
