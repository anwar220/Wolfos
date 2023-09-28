# classes2.dex

.class public final Landroid/media/tv/PesRequest;
.super Landroid/media/tv/BroadcastInfoRequest;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/PesRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUEST_TYPE:I = 0x4


# instance fields
.field private final mStreamId:I

.field private final mTsPid:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/tv/PesRequest$1;

    invoke-direct {v0}, Landroid/media/tv/PesRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/PesRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 6

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;-><init>(III)V

    iput p3, p0, Landroid/media/tv/PesRequest;->mTsPid:I

    iput p4, p0, Landroid/media/tv/PesRequest;->mStreamId:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoRequest;-><init>(ILandroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/PesRequest;->mTsPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/PesRequest;->mStreamId:I

    return-void
.end method

.method static createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/PesRequest;
    .registers 2

    new-instance v0, Landroid/media/tv/PesRequest;

    invoke-direct {v0, p0}, Landroid/media/tv/PesRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getStreamId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/PesRequest;->mStreamId:I

    return v0
.end method

.method public getTsPid()I
    .registers 2

    iget v0, p0, Landroid/media/tv/PesRequest;->mTsPid:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/media/tv/PesRequest;->mTsPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/PesRequest;->mStreamId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
