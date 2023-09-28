# classes2.dex

.class Landroid/location/GnssSingleSatCorrection$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssSingleSatCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssSingleSatCorrection;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssSingleSatCorrection;
    .registers 20

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v14

    and-int/lit8 v0, v11, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    move v5, v0

    goto :goto_1c

    :cond_1b
    move v5, v1

    :goto_1c
    and-int/lit8 v0, v11, 0x2

    if-eqz v0, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    move v6, v0

    goto :goto_27

    :cond_26
    move v6, v1

    :goto_27
    and-int/lit8 v0, v11, 0x4

    if-eqz v0, :cond_31

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    move v7, v0

    goto :goto_32

    :cond_31
    move v7, v1

    :goto_32
    and-int/lit8 v0, v11, 0x10

    if-eqz v0, :cond_3c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    move v8, v0

    goto :goto_3d

    :cond_3c
    move v8, v1

    :goto_3d
    sget-object v0, Landroid/location/GnssExcessPathInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v15, p1

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v16

    new-instance v17, Landroid/location/GnssSingleSatCorrection;

    const/4 v10, 0x0

    move-object/from16 v0, v17

    move v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    move-object/from16 v9, v16

    invoke-direct/range {v0 .. v10}, Landroid/location/GnssSingleSatCorrection;-><init>(IIIFFFFFLjava/util/List;Landroid/location/GnssSingleSatCorrection-IA;)V

    return-object v17
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/GnssSingleSatCorrection$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssSingleSatCorrection;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/GnssSingleSatCorrection;
    .registers 3

    new-array v0, p1, [Landroid/location/GnssSingleSatCorrection;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/GnssSingleSatCorrection$1;->newArray(I)[Landroid/location/GnssSingleSatCorrection;

    move-result-object p1

    return-object p1
.end method
