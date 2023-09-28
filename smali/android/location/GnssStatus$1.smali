# classes2.dex

.class Landroid/location/GnssStatus$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssStatus;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssStatus;
    .registers 19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    new-array v10, v9, [I

    new-array v11, v9, [F

    new-array v12, v9, [F

    new-array v13, v9, [F

    new-array v14, v9, [F

    new-array v15, v9, [F

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v9, :cond_3a

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aput v1, v10, v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    aput v1, v11, v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    aput v1, v12, v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    aput v1, v13, v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    aput v1, v14, v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    aput v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_3a
    new-instance v16, Landroid/location/GnssStatus;

    const/4 v8, 0x0

    move-object/from16 v0, v16

    move v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    invoke-direct/range {v0 .. v8}, Landroid/location/GnssStatus;-><init>(I[I[F[F[F[F[FLandroid/location/GnssStatus-IA;)V

    return-object v16
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/GnssStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssStatus;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/GnssStatus;
    .registers 3

    new-array v0, p1, [Landroid/location/GnssStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/location/GnssStatus$1;->newArray(I)[Landroid/location/GnssStatus;

    move-result-object p1

    return-object p1
.end method
