# classes2.dex

.class public final Landroid/media/tv/SectionResponse;
.super Landroid/media/tv/BroadcastInfoResponse;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/SectionResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESPONSE_TYPE:I = 0x3


# instance fields
.field private final mSessionData:Landroid/os/Bundle;

.field private final mSessionId:I

.field private final mVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/tv/SectionResponse$1;

    invoke-direct {v0}, Landroid/media/tv/SectionResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/SectionResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIILandroid/os/Bundle;)V
    .registers 8

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    iput p4, p0, Landroid/media/tv/SectionResponse;->mSessionId:I

    iput p5, p0, Landroid/media/tv/SectionResponse;->mVersion:I

    iput-object p6, p0, Landroid/media/tv/SectionResponse;->mSessionData:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoResponse;-><init>(ILandroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/SectionResponse;->mSessionId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/SectionResponse;->mVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/SectionResponse;->mSessionData:Landroid/os/Bundle;

    return-void
.end method

.method static createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/SectionResponse;
    .registers 2

    new-instance v0, Landroid/media/tv/SectionResponse;

    invoke-direct {v0, p0}, Landroid/media/tv/SectionResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getSessionData()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/SectionResponse;->mSessionData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSessionId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/SectionResponse;->mSessionId:I

    return v0
.end method

.method public getVersion()I
    .registers 2

    iget v0, p0, Landroid/media/tv/SectionResponse;->mVersion:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoResponse;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/media/tv/SectionResponse;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/SectionResponse;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/tv/SectionResponse;->mSessionData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
