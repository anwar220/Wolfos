# classes2.dex

.class public final Landroid/media/tv/TimelineResponse;
.super Landroid/media/tv/BroadcastInfoResponse;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TimelineResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESPONSE_TYPE:I = 0x8


# instance fields
.field private final mSelector:Ljava/lang/String;

.field private final mTicks:J

.field private final mUnitsPerSecond:I

.field private final mUnitsPerTick:I

.field private final mWallClock:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/tv/TimelineResponse$1;

    invoke-direct {v0}, Landroid/media/tv/TimelineResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/TimelineResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;IIJJ)V
    .registers 12

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    iput-object p4, p0, Landroid/media/tv/TimelineResponse;->mSelector:Ljava/lang/String;

    iput p5, p0, Landroid/media/tv/TimelineResponse;->mUnitsPerTick:I

    iput p6, p0, Landroid/media/tv/TimelineResponse;->mUnitsPerSecond:I

    iput-wide p7, p0, Landroid/media/tv/TimelineResponse;->mWallClock:J

    iput-wide p9, p0, Landroid/media/tv/TimelineResponse;->mTicks:J

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoResponse;-><init>(ILandroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TimelineResponse;->mSelector:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TimelineResponse;->mUnitsPerTick:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TimelineResponse;->mUnitsPerSecond:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/TimelineResponse;->mWallClock:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/TimelineResponse;->mTicks:J

    return-void
.end method

.method static createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TimelineResponse;
    .registers 2

    new-instance v0, Landroid/media/tv/TimelineResponse;

    invoke-direct {v0, p0}, Landroid/media/tv/TimelineResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getSelector()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TimelineResponse;->mSelector:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getTicks()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/TimelineResponse;->mTicks:J

    return-wide v0
.end method

.method public getUnitsPerSecond()I
    .registers 2

    iget v0, p0, Landroid/media/tv/TimelineResponse;->mUnitsPerSecond:I

    return v0
.end method

.method public getUnitsPerTick()I
    .registers 2

    iget v0, p0, Landroid/media/tv/TimelineResponse;->mUnitsPerTick:I

    return v0
.end method

.method public getWallClock()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/TimelineResponse;->mWallClock:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoResponse;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/media/tv/TimelineResponse;->mSelector:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/tv/TimelineResponse;->mUnitsPerTick:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/TimelineResponse;->mUnitsPerSecond:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/media/tv/TimelineResponse;->mWallClock:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/media/tv/TimelineResponse;->mTicks:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
