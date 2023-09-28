# classes2.dex

.class public final Landroid/media/tv/CommandResponse;
.super Landroid/media/tv/BroadcastInfoResponse;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/CommandResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESPONSE_TYPE:I = 0x7

.field public static final RESPONSE_TYPE_JSON:Ljava/lang/String; = "json"

.field public static final RESPONSE_TYPE_XML:Ljava/lang/String; = "xml"


# instance fields
.field private final mResponse:Ljava/lang/String;

.field private final mResponseType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/tv/CommandResponse$1;

    invoke-direct {v0}, Landroid/media/tv/CommandResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/CommandResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    iput-object p4, p0, Landroid/media/tv/CommandResponse;->mResponse:Ljava/lang/String;

    iput-object p5, p0, Landroid/media/tv/CommandResponse;->mResponseType:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoResponse;-><init>(ILandroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/CommandResponse;->mResponse:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/CommandResponse;->mResponseType:Ljava/lang/String;

    return-void
.end method

.method static createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/CommandResponse;
    .registers 2

    new-instance v0, Landroid/media/tv/CommandResponse;

    invoke-direct {v0, p0}, Landroid/media/tv/CommandResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getResponse()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/CommandResponse;->mResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/CommandResponse;->mResponseType:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoResponse;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/media/tv/CommandResponse;->mResponse:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/CommandResponse;->mResponseType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
