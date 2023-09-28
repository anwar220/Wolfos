# classes2.dex

.class public final Landroid/media/tv/StreamEventRequest;
.super Landroid/media/tv/BroadcastInfoRequest;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/StreamEventRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUEST_TYPE:I = 0x5


# instance fields
.field private final mEventName:Ljava/lang/String;

.field private final mTargetUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/tv/StreamEventRequest$1;

    invoke-direct {v0}, Landroid/media/tv/StreamEventRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/StreamEventRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILandroid/net/Uri;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;-><init>(III)V

    iput-object p3, p0, Landroid/media/tv/StreamEventRequest;->mTargetUri:Landroid/net/Uri;

    iput-object p4, p0, Landroid/media/tv/StreamEventRequest;->mEventName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoRequest;-><init>(ILandroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_10
    iput-object v1, p0, Landroid/media/tv/StreamEventRequest;->mTargetUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/tv/StreamEventRequest;->mEventName:Ljava/lang/String;

    return-void
.end method

.method static createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/StreamEventRequest;
    .registers 2

    new-instance v0, Landroid/media/tv/StreamEventRequest;

    invoke-direct {v0, p0}, Landroid/media/tv/StreamEventRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getEventName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/StreamEventRequest;->mEventName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/StreamEventRequest;->mTargetUri:Landroid/net/Uri;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/media/tv/StreamEventRequest;->mTargetUri:Landroid/net/Uri;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/tv/StreamEventRequest;->mEventName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
