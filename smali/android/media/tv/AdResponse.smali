# classes2.dex

.class public final Landroid/media/tv/AdResponse;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/AdResponse$ResponseType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/AdResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_TYPE_ERROR:I = 0x4

.field public static final RESPONSE_TYPE_FINISHED:I = 0x2

.field public static final RESPONSE_TYPE_PLAYING:I = 0x1

.field public static final RESPONSE_TYPE_STOPPED:I = 0x3


# instance fields
.field private final mElapsedTime:J

.field private final mId:I

.field private final mResponseType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/tv/AdResponse$1;

    invoke-direct {v0}, Landroid/media/tv/AdResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/AdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/AdResponse;->mId:I

    iput p2, p0, Landroid/media/tv/AdResponse;->mResponseType:I

    iput-wide p3, p0, Landroid/media/tv/AdResponse;->mElapsedTime:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/AdResponse;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/AdResponse;->mResponseType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/AdResponse;->mElapsedTime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/tv/AdResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/AdResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getElapsedTimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/AdResponse;->mElapsedTime:J

    return-wide v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/AdResponse;->mId:I

    return v0
.end method

.method public getResponseType()I
    .registers 2

    iget v0, p0, Landroid/media/tv/AdResponse;->mResponseType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/media/tv/AdResponse;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/AdResponse;->mResponseType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/media/tv/AdResponse;->mElapsedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
