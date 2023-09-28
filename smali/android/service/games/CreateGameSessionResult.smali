# classes3.dex

.class public final Landroid/service/games/CreateGameSessionResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/games/CreateGameSessionResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mGameSession:Landroid/service/games/IGameSession;

.field private final mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/games/CreateGameSessionResult$1;

    invoke-direct {v0}, Landroid/service/games/CreateGameSessionResult$1;-><init>()V

    sput-object v0, Landroid/service/games/CreateGameSessionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/service/games/IGameSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/games/CreateGameSessionResult;->mGameSession:Landroid/service/games/IGameSession;

    iput-object p2, p0, Landroid/service/games/CreateGameSessionResult;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getGameSession()Landroid/service/games/IGameSession;
    .registers 2

    iget-object v0, p0, Landroid/service/games/CreateGameSessionResult;->mGameSession:Landroid/service/games/IGameSession;

    return-object v0
.end method

.method public getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .registers 2

    iget-object v0, p0, Landroid/service/games/CreateGameSessionResult;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/service/games/CreateGameSessionResult;->mGameSession:Landroid/service/games/IGameSession;

    invoke-interface {v0}, Landroid/service/games/IGameSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/service/games/CreateGameSessionResult;->mSurfacePackage:Landroid/view/SurfaceControlViewHost$SurfacePackage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
