# classes2.dex

.class Landroid/net/wifi/nl80211/HiddenNetwork$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/HiddenNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/nl80211/HiddenNetwork;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/HiddenNetwork;
    .registers 4

    new-instance v0, Landroid/net/wifi/nl80211/HiddenNetwork;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/HiddenNetwork;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/nl80211/HiddenNetwork;->ssid:[B

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/HiddenNetwork$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nl80211/HiddenNetwork;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/wifi/nl80211/HiddenNetwork;
    .registers 3

    new-array v0, p1, [Landroid/net/wifi/nl80211/HiddenNetwork;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/wifi/nl80211/HiddenNetwork$1;->newArray(I)[Landroid/net/wifi/nl80211/HiddenNetwork;

    move-result-object p1

    return-object p1
.end method
