# classes2.dex

.class public final Landroid/media/tv/TimelineRequest;
.super Landroid/media/tv/BroadcastInfoRequest;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TimelineRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUEST_TYPE:I = 0x8


# instance fields
.field private final mIntervalMillis:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/tv/TimelineRequest$1;

    invoke-direct {v0}, Landroid/media/tv/TimelineRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/TimelineRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;-><init>(III)V

    iput p3, p0, Landroid/media/tv/TimelineRequest;->mIntervalMillis:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoRequest;-><init>(ILandroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TimelineRequest;->mIntervalMillis:I

    return-void
.end method

.method static createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TimelineRequest;
    .registers 2

    new-instance v0, Landroid/media/tv/TimelineRequest;

    invoke-direct {v0, p0}, Landroid/media/tv/TimelineRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getIntervalMillis()I
    .registers 2

    iget v0, p0, Landroid/media/tv/TimelineRequest;->mIntervalMillis:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/media/tv/TimelineRequest;->mIntervalMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
