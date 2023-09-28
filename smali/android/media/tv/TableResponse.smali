# classes2.dex

.class public final Landroid/media/tv/TableResponse;
.super Landroid/media/tv/BroadcastInfoResponse;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TableResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESPONSE_TYPE:I = 0x2


# instance fields
.field private final mSize:I

.field private final mTableUri:Landroid/net/Uri;

.field private final mVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/tv/TableResponse$1;

    invoke-direct {v0}, Landroid/media/tv/TableResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/TableResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILandroid/net/Uri;II)V
    .registers 8

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    iput-object p4, p0, Landroid/media/tv/TableResponse;->mTableUri:Landroid/net/Uri;

    iput p5, p0, Landroid/media/tv/TableResponse;->mVersion:I

    iput p6, p0, Landroid/media/tv/TableResponse;->mSize:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoResponse;-><init>(ILandroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_10
    iput-object v1, p0, Landroid/media/tv/TableResponse;->mTableUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/tv/TableResponse;->mVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/tv/TableResponse;->mSize:I

    return-void
.end method

.method static createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TableResponse;
    .registers 2

    new-instance v0, Landroid/media/tv/TableResponse;

    invoke-direct {v0, p0}, Landroid/media/tv/TableResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getSize()I
    .registers 2

    iget v0, p0, Landroid/media/tv/TableResponse;->mSize:I

    return v0
.end method

.method public getTableUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TableResponse;->mTableUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    iget v0, p0, Landroid/media/tv/TableResponse;->mVersion:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoResponse;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/media/tv/TableResponse;->mTableUri:Landroid/net/Uri;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Landroid/media/tv/TableResponse;->mVersion:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/tv/TableResponse;->mSize:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
