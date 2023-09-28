# classes.dex

.class public final Landroid/app/GameModeInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/GameModeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveGameMode:I

.field private final mAvailableGameModes:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/GameModeInfo$1;

    invoke-direct {v0}, Landroid/app/GameModeInfo$1;-><init>()V

    sput-object v0, Landroid/app/GameModeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/GameModeInfo;->mActiveGameMode:I

    iput-object p2, p0, Landroid/app/GameModeInfo;->mAvailableGameModes:[I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/GameModeInfo;->mActiveGameMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/app/GameModeInfo;->mAvailableGameModes:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActiveGameMode()I
    .registers 2

    iget v0, p0, Landroid/app/GameModeInfo;->mActiveGameMode:I

    return v0
.end method

.method public getAvailableGameModes()[I
    .registers 2

    iget-object v0, p0, Landroid/app/GameModeInfo;->mAvailableGameModes:[I

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/app/GameModeInfo;->mActiveGameMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/GameModeInfo;->mAvailableGameModes:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/GameModeInfo;->mAvailableGameModes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
