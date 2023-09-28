# classes2.dex

.class Landroid/location/GnssExcessPathInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssExcessPathInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssExcessPathInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssExcessPathInfo;
    .registers 11

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    and-int/lit8 v0, v7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    move v2, v0

    goto :goto_10

    :cond_f
    move v2, v1

    :goto_10
    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    move v3, v0

    goto :goto_1b

    :cond_1a
    move v3, v1

    :goto_1b
    and-int/lit8 v0, v7, 0x4

    if-eqz v0, :cond_28

    sget-object v0, Landroid/location/GnssReflectingPlane;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GnssReflectingPlane;

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    move-object v4, v0

    and-int/lit8 v0, v7, 0x8

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    move v5, v0

    goto :goto_35

    :cond_34
    move v5, v1

    :goto_35
    new-instance v8, Landroid/location/GnssExcessPathInfo;

    const/4 v6, 0x0

    move-object v0, v8

    move v1, v7

    invoke-direct/range {v0 .. v6}, Landroid/location/GnssExcessPathInfo;-><init>(IFFLandroid/location/GnssReflectingPlane;FLandroid/location/GnssExcessPathInfo-IA;)V

    return-object v8
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/GnssExcessPathInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssExcessPathInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/GnssExcessPathInfo;
    .registers 3

    new-array v0, p1, [Landroid/location/GnssExcessPathInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/GnssExcessPathInfo$1;->newArray(I)[Landroid/location/GnssExcessPathInfo;

    move-result-object p1

    return-object p1
.end method
