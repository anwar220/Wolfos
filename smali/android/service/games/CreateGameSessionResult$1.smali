# classes3.dex

.class Landroid/service/games/CreateGameSessionResult$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/games/CreateGameSessionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/games/CreateGameSessionResult;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/games/CreateGameSessionResult;
    .registers 6

    new-instance v0, Landroid/service/games/CreateGameSessionResult;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/games/IGameSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/games/IGameSession;

    move-result-object v1

    const-class v2, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-direct {v0, v1, v2}, Landroid/service/games/CreateGameSessionResult;-><init>(Landroid/service/games/IGameSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/games/CreateGameSessionResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/games/CreateGameSessionResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/games/CreateGameSessionResult;
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/service/games/CreateGameSessionResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/service/games/CreateGameSessionResult$1;->newArray(I)[Landroid/service/games/CreateGameSessionResult;

    move-result-object p1

    return-object p1
.end method
