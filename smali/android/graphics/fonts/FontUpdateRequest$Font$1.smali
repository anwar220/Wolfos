# classes.dex

.class Landroid/graphics/fonts/FontUpdateRequest$Font$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/FontUpdateRequest$Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/graphics/fonts/FontUpdateRequest$Font;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/graphics/fonts/FontUpdateRequest$Font;
    .registers 9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/graphics/fonts/FontUpdateRequest$Font;

    new-instance v6, Landroid/graphics/fonts/FontStyle;

    invoke-direct {v6, v1, v2}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    invoke-direct {v5, v0, v6, v3, v4}, Landroid/graphics/fonts/FontUpdateRequest$Font;-><init>(Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;)V

    return-object v5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/graphics/fonts/FontUpdateRequest$Font$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/fonts/FontUpdateRequest$Font;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/graphics/fonts/FontUpdateRequest$Font;
    .registers 3

    new-array v0, p1, [Landroid/graphics/fonts/FontUpdateRequest$Font;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/graphics/fonts/FontUpdateRequest$Font$1;->newArray(I)[Landroid/graphics/fonts/FontUpdateRequest$Font;

    move-result-object p1

    return-object p1
.end method
