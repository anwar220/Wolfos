# classes2.dex

.class public final Landroid/media/tv/StreamEventResponse;
.super Landroid/media/tv/BroadcastInfoResponse;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/StreamEventResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESPONSE_TYPE:I = 0x5


# instance fields
.field private final mData:[B

.field private final mEventId:I

.field private final mNptMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/tv/StreamEventResponse$1;

    invoke-direct {v0}, Landroid/media/tv/StreamEventResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/StreamEventResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIJ[B)V
    .registers 9

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    iput p4, p0, Landroid/media/tv/StreamEventResponse;->mEventId:I

    iput-wide p5, p0, Landroid/media/tv/StreamEventResponse;->mNptMillis:J

    iput-object p7, p0, Landroid/media/tv/StreamEventResponse;->mData:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoResponse;-><init>(ILandroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/StreamEventResponse;->mEventId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/StreamEventResponse;->mNptMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1e

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/media/tv/StreamEventResponse;->mData:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_21

    :cond_1e
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/tv/StreamEventResponse;->mData:[B

    :goto_21
    return-void
.end method

.method static createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/StreamEventResponse;
    .registers 2

    new-instance v0, Landroid/media/tv/StreamEventResponse;

    invoke-direct {v0, p0}, Landroid/media/tv/StreamEventResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getData()[B
    .registers 2

    iget-object v0, p0, Landroid/media/tv/StreamEventResponse;->mData:[B

    return-object v0
.end method

.method public getEventId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/StreamEventResponse;->mEventId:I

    return v0
.end method

.method public getNptMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/StreamEventResponse;->mNptMillis:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoResponse;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/media/tv/StreamEventResponse;->mEventId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/media/tv/StreamEventResponse;->mNptMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/media/tv/StreamEventResponse;->mData:[B

    if-eqz v0, :cond_1e

    array-length v1, v0

    if-lez v1, :cond_1e

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/tv/StreamEventResponse;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_22

    :cond_1e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_22
    return-void
.end method
