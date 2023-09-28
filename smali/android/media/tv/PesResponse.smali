# classes2.dex

.class public final Landroid/media/tv/PesResponse;
.super Landroid/media/tv/BroadcastInfoResponse;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/PesResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESPONSE_TYPE:I = 0x4


# instance fields
.field private final mSharedFilterToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/tv/PesResponse$1;

    invoke-direct {v0}, Landroid/media/tv/PesResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/PesResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .registers 6

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    iput-object p4, p0, Landroid/media/tv/PesResponse;->mSharedFilterToken:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoResponse;-><init>(ILandroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/PesResponse;->mSharedFilterToken:Ljava/lang/String;

    return-void
.end method

.method static createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/PesResponse;
    .registers 2

    new-instance v0, Landroid/media/tv/PesResponse;

    invoke-direct {v0, p0}, Landroid/media/tv/PesResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getSharedFilterToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/PesResponse;->mSharedFilterToken:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoResponse;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/media/tv/PesResponse;->mSharedFilterToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
