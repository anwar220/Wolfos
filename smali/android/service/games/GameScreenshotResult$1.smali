# classes3.dex

.class Landroid/service/games/GameScreenshotResult$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/games/GameScreenshotResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/games/GameScreenshotResult;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/games/GameScreenshotResult;
    .registers 5

    new-instance v0, Landroid/service/games/GameScreenshotResult;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/service/games/GameScreenshotResult;-><init>(ILandroid/service/games/GameScreenshotResult-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/games/GameScreenshotResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/games/GameScreenshotResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/games/GameScreenshotResult;
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/service/games/GameScreenshotResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/games/GameScreenshotResult$1;->newArray(I)[Landroid/service/games/GameScreenshotResult;

    move-result-object p1

    return-object p1
.end method
