# classes3.dex

.class Landroid/service/euicc/DownloadSubscriptionResult$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/euicc/DownloadSubscriptionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/euicc/DownloadSubscriptionResult;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/euicc/DownloadSubscriptionResult;
    .registers 4

    new-instance v0, Landroid/service/euicc/DownloadSubscriptionResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/service/euicc/DownloadSubscriptionResult;-><init>(Landroid/os/Parcel;Landroid/service/euicc/DownloadSubscriptionResult-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/euicc/DownloadSubscriptionResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/euicc/DownloadSubscriptionResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/euicc/DownloadSubscriptionResult;
    .registers 3

    new-array v0, p1, [Landroid/service/euicc/DownloadSubscriptionResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/euicc/DownloadSubscriptionResult$1;->newArray(I)[Landroid/service/euicc/DownloadSubscriptionResult;

    move-result-object p1

    return-object p1
.end method