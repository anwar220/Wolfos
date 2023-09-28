# classes2.dex

.class public abstract Landroid/media/tv/BroadcastInfoRequest;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/BroadcastInfoRequest$RequestOption;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/BroadcastInfoRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_OPTION_AUTO_UPDATE:I = 0x1

.field public static final REQUEST_OPTION_REPEAT:I


# instance fields
.field private final mOption:I

.field private final mRequestId:I

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/tv/BroadcastInfoRequest$1;

    invoke-direct {v0}, Landroid/media/tv/BroadcastInfoRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/BroadcastInfoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/BroadcastInfoRequest;->mType:I

    iput p2, p0, Landroid/media/tv/BroadcastInfoRequest;->mRequestId:I

    iput p3, p0, Landroid/media/tv/BroadcastInfoRequest;->mOption:I

    return-void
.end method

.method constructor <init>(ILandroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/BroadcastInfoRequest;->mType:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/BroadcastInfoRequest;->mRequestId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/BroadcastInfoRequest;->mOption:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getOption()I
    .registers 2

    iget v0, p0, Landroid/media/tv/BroadcastInfoRequest;->mOption:I

    return v0
.end method

.method public getRequestId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/BroadcastInfoRequest;->mRequestId:I

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/media/tv/BroadcastInfoRequest;->mType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/media/tv/BroadcastInfoRequest;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/BroadcastInfoRequest;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/BroadcastInfoRequest;->mOption:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
