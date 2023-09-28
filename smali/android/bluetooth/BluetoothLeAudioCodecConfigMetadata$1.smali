# classes.dex

.class Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    .registers 8

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_11

    new-array v3, v2, [B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_14

    :cond_11
    const/4 v3, 0x0

    new-array v3, v3, [B

    :goto_14
    new-instance v4, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, v3, v5}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;-><init>(J[BLandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata-IA;)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    .registers 3

    new-array v0, p1, [Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$1;->newArray(I)[Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    move-result-object p1

    return-object p1
.end method
