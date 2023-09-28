# classes3.dex

.class public final Landroid/service/games/GameSessionActivityResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/games/GameSessionActivityResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mData:Landroid/content/Intent;

.field private final mResultCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/games/GameSessionActivityResult$1;

    invoke-direct {v0}, Landroid/service/games/GameSessionActivityResult$1;-><init>()V

    sput-object v0, Landroid/service/games/GameSessionActivityResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/games/GameSessionActivityResult;->mResultCode:I

    iput-object p2, p0, Landroid/service/games/GameSessionActivityResult;->mData:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getData()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Landroid/service/games/GameSessionActivityResult;->mData:Landroid/content/Intent;

    return-object v0
.end method

.method public getResultCode()I
    .registers 2

    iget v0, p0, Landroid/service/games/GameSessionActivityResult;->mResultCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/service/games/GameSessionActivityResult;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/games/GameSessionActivityResult;->mData:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
