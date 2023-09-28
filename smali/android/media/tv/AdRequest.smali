# classes2.dex

.class public final Landroid/media/tv/AdRequest;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/AdRequest$RequestType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/AdRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_TYPE_START:I = 0x1

.field public static final REQUEST_TYPE_STOP:I = 0x2


# instance fields
.field private final mEchoInterval:J

.field private final mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final mId:I

.field private final mMediaFileType:Ljava/lang/String;

.field private final mMetadata:Landroid/os/Bundle;

.field private final mRequestType:I

.field private final mStartTime:J

.field private final mStopTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/tv/AdRequest$1;

    invoke-direct {v0}, Landroid/media/tv/AdRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/AdRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILandroid/os/ParcelFileDescriptor;JJJLjava/lang/String;Landroid/os/Bundle;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/AdRequest;->mId:I

    iput p2, p0, Landroid/media/tv/AdRequest;->mRequestType:I

    iput-object p3, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-wide p4, p0, Landroid/media/tv/AdRequest;->mStartTime:J

    iput-wide p6, p0, Landroid/media/tv/AdRequest;->mStopTime:J

    iput-wide p8, p0, Landroid/media/tv/AdRequest;->mEchoInterval:J

    iput-object p10, p0, Landroid/media/tv/AdRequest;->mMediaFileType:Ljava/lang/String;

    iput-object p11, p0, Landroid/media/tv/AdRequest;->mMetadata:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/AdRequest;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/AdRequest;->mRequestType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    goto :goto_23

    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    :goto_23
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/AdRequest;->mStartTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/AdRequest;->mStopTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/tv/AdRequest;->mEchoInterval:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/AdRequest;->mMediaFileType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/AdRequest;->mMetadata:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/tv/AdRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/AdRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getEchoIntervalMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mEchoInterval:J

    return-wide v0
.end method

.method public getFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/AdRequest;->mId:I

    return v0
.end method

.method public getMediaFileType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/AdRequest;->mMediaFileType:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadata()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/AdRequest;->mMetadata:Landroid/os/Bundle;

    return-object v0
.end method

.method public getRequestType()I
    .registers 2

    iget v0, p0, Landroid/media/tv/AdRequest;->mRequestType:I

    return v0
.end method

.method public getStartTimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mStartTime:J

    return-wide v0
.end method

.method public getStopTimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mStopTime:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/media/tv/AdRequest;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/AdRequest;->mRequestType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/tv/AdRequest;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1c

    :cond_18
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1c
    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mStopTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/media/tv/AdRequest;->mEchoInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/media/tv/AdRequest;->mMediaFileType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/tv/AdRequest;->mMetadata:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
