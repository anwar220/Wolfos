# classes2.dex

.class Landroid/net/wifi/nl80211/NativeScanResult$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/NativeScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/nl80211/NativeScanResult;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/NativeScanResult;
    .registers 7

    new-instance v0, Landroid/net/wifi/nl80211/NativeScanResult;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/NativeScanResult;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/nl80211/NativeScanResult;->ssid:[B

    iget-object v1, v0, Landroid/net/wifi/nl80211/NativeScanResult;->ssid:[B

    const/4 v2, 0x0

    if-nez v1, :cond_14

    new-array v1, v2, [B

    iput-object v1, v0, Landroid/net/wifi/nl80211/NativeScanResult;->ssid:[B

    :cond_14
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/nl80211/NativeScanResult;->bssid:[B

    iget-object v1, v0, Landroid/net/wifi/nl80211/NativeScanResult;->bssid:[B

    if-nez v1, :cond_22

    new-array v1, v2, [B

    iput-object v1, v0, Landroid/net/wifi/nl80211/NativeScanResult;->bssid:[B

    :cond_22
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/nl80211/NativeScanResult;->infoElement:[B

    iget-object v1, v0, Landroid/net/wifi/nl80211/NativeScanResult;->infoElement:[B

    if-nez v1, :cond_30

    new-array v1, v2, [B

    iput-object v1, v0, Landroid/net/wifi/nl80211/NativeScanResult;->infoElement:[B

    :cond_30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/nl80211/NativeScanResult;->frequency:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/nl80211/NativeScanResult;->signalMbm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, v0, Landroid/net/wifi/nl80211/NativeScanResult;->tsf:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/nl80211/NativeScanResult;->capability:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4f

    const/4 v2, 0x1

    :cond_4f
    iput-boolean v2, v0, Landroid/net/wifi/nl80211/NativeScanResult;->associated:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/net/wifi/nl80211/NativeScanResult;->radioChainInfos:Ljava/util/List;

    iget-object v1, v0, Landroid/net/wifi/nl80211/NativeScanResult;->radioChainInfos:Ljava/util/List;

    sget-object v2, Landroid/net/wifi/nl80211/RadioChainInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/NativeScanResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/NativeScanResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/nl80211/NativeScanResult;
    .registers 3

    new-array v0, p1, [Landroid/net/wifi/nl80211/NativeScanResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/NativeScanResult$1;->newArray(I)[Landroid/net/wifi/nl80211/NativeScanResult;

    move-result-object p1

    return-object p1
.end method
