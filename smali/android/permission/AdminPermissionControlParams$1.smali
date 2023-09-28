# classes3.dex

.class Landroid/permission/AdminPermissionControlParams$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/AdminPermissionControlParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/permission/AdminPermissionControlParams;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/permission/AdminPermissionControlParams;
    .registers 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    new-instance v4, Landroid/permission/AdminPermissionControlParams;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/permission/AdminPermissionControlParams;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/permission/AdminPermissionControlParams$1;->createFromParcel(Landroid/os/Parcel;)Landroid/permission/AdminPermissionControlParams;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/permission/AdminPermissionControlParams;
    .registers 3

    new-array v0, p1, [Landroid/permission/AdminPermissionControlParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/permission/AdminPermissionControlParams$1;->newArray(I)[Landroid/permission/AdminPermissionControlParams;

    move-result-object p1

    return-object p1
.end method
