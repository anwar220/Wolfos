# classes2.dex

.class Landroid/location/GnssAutomaticGainControl$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAutomaticGainControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssAutomaticGainControl;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssAutomaticGainControl;
    .registers 10

    new-instance v7, Landroid/location/GnssAutomaticGainControl;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/location/GnssAutomaticGainControl;-><init>(DIJLandroid/location/GnssAutomaticGainControl-IA;)V

    return-object v7
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/GnssAutomaticGainControl$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssAutomaticGainControl;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/GnssAutomaticGainControl;
    .registers 3

    new-array v0, p1, [Landroid/location/GnssAutomaticGainControl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/GnssAutomaticGainControl$1;->newArray(I)[Landroid/location/GnssAutomaticGainControl;

    move-result-object p1

    return-object p1
.end method
