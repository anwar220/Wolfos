# classes3.dex

.class Landroid/telecom/VideoProfile$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/VideoProfile;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/VideoProfile;
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const-class v2, Landroid/telecom/VideoProfile;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-instance v3, Landroid/telecom/VideoProfile;

    invoke-direct {v3, v0, v1}, Landroid/telecom/VideoProfile;-><init>(II)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telecom/VideoProfile$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/VideoProfile;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telecom/VideoProfile;
    .registers 3

    new-array v0, p1, [Landroid/telecom/VideoProfile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telecom/VideoProfile$1;->newArray(I)[Landroid/telecom/VideoProfile;

    move-result-object p1

    return-object p1
.end method
