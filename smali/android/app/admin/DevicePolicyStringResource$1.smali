# classes.dex

.class Landroid/app/admin/DevicePolicyStringResource$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyStringResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/DevicePolicyStringResource;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/DevicePolicyStringResource;
    .registers 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Landroid/app/admin/ParcelableResource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/ParcelableResource;

    new-instance v3, Landroid/app/admin/DevicePolicyStringResource;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Landroid/app/admin/DevicePolicyStringResource;-><init>(Ljava/lang/String;ILandroid/app/admin/ParcelableResource;Landroid/app/admin/DevicePolicyStringResource-IA;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyStringResource$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/DevicePolicyStringResource;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/app/admin/DevicePolicyStringResource;
    .registers 3

    new-array v0, p1, [Landroid/app/admin/DevicePolicyStringResource;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyStringResource$1;->newArray(I)[Landroid/app/admin/DevicePolicyStringResource;

    move-result-object p1

    return-object p1
.end method
