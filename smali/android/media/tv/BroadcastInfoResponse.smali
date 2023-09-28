# classes2.dex

.class public abstract Landroid/media/tv/BroadcastInfoResponse;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/BroadcastInfoResponse$ResponseResult;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/BroadcastInfoResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_RESULT_CANCEL:I = 0x3

.field public static final RESPONSE_RESULT_ERROR:I = 0x1

.field public static final RESPONSE_RESULT_OK:I = 0x2


# instance fields
.field private final mRequestId:I

.field private final mResponseResult:I

.field private final mSequence:I

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/tv/BroadcastInfoResponse$1;

    invoke-direct {v0}, Landroid/media/tv/BroadcastInfoResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/BroadcastInfoResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/BroadcastInfoResponse;->mType:I

    iput p2, p0, Landroid/media/tv/BroadcastInfoResponse;->mRequestId:I

    iput p3, p0, Landroid/media/tv/BroadcastInfoResponse;->mSequence:I

    iput p4, p0, Landroid/media/tv/BroadcastInfoResponse;->mResponseResult:I

    return-void
.end method

.method constructor <init>(ILandroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/BroadcastInfoResponse;->mType:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mRequestId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mSequence:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mResponseResult:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getRequestId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mRequestId:I

    return v0
.end method

.method public getResponseResult()I
    .registers 2

    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mResponseResult:I

    return v0
.end method

.method public getSequence()I
    .registers 2

    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mSequence:I

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mSequence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/BroadcastInfoResponse;->mResponseResult:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
