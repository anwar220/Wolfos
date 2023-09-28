# classes.dex

.class Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;
    .registers 11

    new-instance v6, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_14

    move v4, v3

    goto :goto_15

    :cond_14
    move v4, v2

    :goto_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v3, :cond_25

    move v8, v3

    goto :goto_26

    :cond_25
    move v8, v2

    :goto_26
    move-object v0, v6

    move v2, v4

    move-object v3, v5

    move v4, v7

    move v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;-><init>(Landroid/bluetooth/BluetoothDevice;ZLjava/lang/String;IZ)V

    return-object v6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;
    .registers 3

    new-array v0, p1, [Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState$1;->newArray(I)[Landroid/bluetooth/BluetoothHeadsetClient$NetworkServiceState;

    move-result-object p1

    return-object p1
.end method
