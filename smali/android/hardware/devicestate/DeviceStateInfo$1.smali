# classes.dex

.class Landroid/hardware/devicestate/DeviceStateInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceStateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/devicestate/DeviceStateInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/devicestate/DeviceStateInfo;
    .registers 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_12

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-instance v4, Landroid/hardware/devicestate/DeviceStateInfo;

    invoke-direct {v4, v1, v2, v3}, Landroid/hardware/devicestate/DeviceStateInfo;-><init>([III)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/hardware/devicestate/DeviceStateInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/devicestate/DeviceStateInfo;
    .registers 3

    new-array v0, p1, [Landroid/hardware/devicestate/DeviceStateInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/hardware/devicestate/DeviceStateInfo$1;->newArray(I)[Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p1

    return-object p1
.end method
