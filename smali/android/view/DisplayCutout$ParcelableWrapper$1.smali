# classes3.dex

.class Landroid/view/DisplayCutout$ParcelableWrapper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayCutout$ParcelableWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/DisplayCutout$ParcelableWrapper;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayCutout$ParcelableWrapper;
    .registers 4

    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-static {p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->readCutoutFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayCutout;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>(Landroid/view/DisplayCutout;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/DisplayCutout$ParcelableWrapper$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayCutout$ParcelableWrapper;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/DisplayCutout$ParcelableWrapper;
    .registers 3

    new-array v0, p1, [Landroid/view/DisplayCutout$ParcelableWrapper;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/DisplayCutout$ParcelableWrapper$1;->newArray(I)[Landroid/view/DisplayCutout$ParcelableWrapper;

    move-result-object p1

    return-object p1
.end method
