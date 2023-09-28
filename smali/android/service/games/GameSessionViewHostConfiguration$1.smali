# classes3.dex

.class Landroid/service/games/GameSessionViewHostConfiguration$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/games/GameSessionViewHostConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/games/GameSessionViewHostConfiguration;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/games/GameSessionViewHostConfiguration;
    .registers 6

    new-instance v0, Landroid/service/games/GameSessionViewHostConfiguration;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/service/games/GameSessionViewHostConfiguration;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/games/GameSessionViewHostConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/games/GameSessionViewHostConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/games/GameSessionViewHostConfiguration;
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/service/games/GameSessionViewHostConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/games/GameSessionViewHostConfiguration$1;->newArray(I)[Landroid/service/games/GameSessionViewHostConfiguration;

    move-result-object p1

    return-object p1
.end method
