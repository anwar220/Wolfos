# classes2.dex

.class Landroid/net/vcn/VcnConfig$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/VcnConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/vcn/VcnConfig;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/vcn/VcnConfig;
    .registers 5

    new-instance v0, Landroid/net/vcn/VcnConfig;

    const-class v1, Landroid/os/PersistableBundle;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    invoke-direct {v0, v1}, Landroid/net/vcn/VcnConfig;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/vcn/VcnConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/vcn/VcnConfig;
    .registers 3

    new-array v0, p1, [Landroid/net/vcn/VcnConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnConfig$1;->newArray(I)[Landroid/net/vcn/VcnConfig;

    move-result-object p1

    return-object p1
.end method
