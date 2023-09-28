# classes2.dex

.class public final Landroid/media/metrics/PlaybackErrorEvent;
.super Landroid/media/metrics/Event;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/metrics/PlaybackErrorEvent$Builder;,
        Landroid/media/metrics/PlaybackErrorEvent$ErrorCode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/metrics/PlaybackErrorEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_AUDIO_TRACK_INIT_FAILED:I = 0x11

.field public static final ERROR_AUDIO_TRACK_OTHER:I = 0x13

.field public static final ERROR_AUDIO_TRACK_WRITE_FAILED:I = 0x12

.field public static final ERROR_DECODER_INIT_FAILED:I = 0xd

.field public static final ERROR_DECODING_FAILED:I = 0xe

.field public static final ERROR_DECODING_FORMAT_EXCEEDS_CAPABILITIES:I = 0xf

.field public static final ERROR_DECODING_FORMAT_UNSUPPORTED:I = 0x23

.field public static final ERROR_DECODING_OTHER:I = 0x10

.field public static final ERROR_DRM_CONTENT_ERROR:I = 0x1c

.field public static final ERROR_DRM_DEVICE_REVOKED:I = 0x1d

.field public static final ERROR_DRM_DISALLOWED_OPERATION:I = 0x1a

.field public static final ERROR_DRM_LICENSE_ACQUISITION_FAILED:I = 0x19

.field public static final ERROR_DRM_OTHER:I = 0x1e

.field public static final ERROR_DRM_PROVISIONING_FAILED:I = 0x18

.field public static final ERROR_DRM_SCHEME_UNSUPPORTED:I = 0x17

.field public static final ERROR_DRM_SYSTEM_ERROR:I = 0x1b

.field public static final ERROR_IO_BAD_HTTP_STATUS:I = 0x5

.field public static final ERROR_IO_CONNECTION_CLOSED:I = 0x8

.field public static final ERROR_IO_CONNECTION_TIMEOUT:I = 0x7

.field public static final ERROR_IO_DNS_FAILED:I = 0x6

.field public static final ERROR_IO_FILE_NOT_FOUND:I = 0x1f

.field public static final ERROR_IO_NETWORK_CONNECTION_FAILED:I = 0x4

.field public static final ERROR_IO_NETWORK_UNAVAILABLE:I = 0x3

.field public static final ERROR_IO_NO_PERMISSION:I = 0x20

.field public static final ERROR_IO_OTHER:I = 0x9

.field public static final ERROR_OTHER:I = 0x1

.field public static final ERROR_PARSING_CONTAINER_MALFORMED:I = 0xb

.field public static final ERROR_PARSING_CONTAINER_UNSUPPORTED:I = 0x22

.field public static final ERROR_PARSING_MANIFEST_MALFORMED:I = 0xa

.field public static final ERROR_PARSING_MANIFEST_UNSUPPORTED:I = 0x21

.field public static final ERROR_PARSING_OTHER:I = 0xc

.field public static final ERROR_PLAYER_BEHIND_LIVE_WINDOW:I = 0x15

.field public static final ERROR_PLAYER_OTHER:I = 0x16

.field public static final ERROR_PLAYER_REMOTE:I = 0x14

.field public static final ERROR_RUNTIME:I = 0x2

.field public static final ERROR_UNKNOWN:I


# instance fields
.field private final mErrorCode:I

.field private final mExceptionStack:Ljava/lang/String;

.field private final mSubErrorCode:I

.field private final mTimeSinceCreatedMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/metrics/PlaybackErrorEvent$1;

    invoke-direct {v0}, Landroid/media/metrics/PlaybackErrorEvent$1;-><init>()V

    sput-object v0, Landroid/media/metrics/PlaybackErrorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 9

    invoke-direct {p0}, Landroid/media/metrics/Event;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    :goto_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v6

    iput-object v1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mExceptionStack:Ljava/lang/String;

    iput v2, p0, Landroid/media/metrics/PlaybackErrorEvent;->mErrorCode:I

    iput v3, p0, Landroid/media/metrics/PlaybackErrorEvent;->mSubErrorCode:I

    iput-wide v4, p0, Landroid/media/metrics/PlaybackErrorEvent;->mTimeSinceCreatedMillis:J

    iput-object v6, p0, Landroid/media/metrics/PlaybackErrorEvent;->mMetricsBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/metrics/PlaybackErrorEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/metrics/PlaybackErrorEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIJLandroid/os/Bundle;)V
    .registers 8

    invoke-direct {p0}, Landroid/media/metrics/Event;-><init>()V

    iput-object p1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mExceptionStack:Ljava/lang/String;

    iput p2, p0, Landroid/media/metrics/PlaybackErrorEvent;->mErrorCode:I

    iput p3, p0, Landroid/media/metrics/PlaybackErrorEvent;->mSubErrorCode:I

    iput-wide p4, p0, Landroid/media/metrics/PlaybackErrorEvent;->mTimeSinceCreatedMillis:J

    invoke-virtual {p6}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/metrics/PlaybackErrorEvent;->mMetricsBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIJLandroid/os/Bundle;Landroid/media/metrics/PlaybackErrorEvent-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/media/metrics/PlaybackErrorEvent;-><init>(Ljava/lang/String;IIJLandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/metrics/PlaybackErrorEvent;

    iget-object v3, p0, Landroid/media/metrics/PlaybackErrorEvent;->mExceptionStack:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/metrics/PlaybackErrorEvent;->mExceptionStack:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget v3, p0, Landroid/media/metrics/PlaybackErrorEvent;->mErrorCode:I

    iget v4, v2, Landroid/media/metrics/PlaybackErrorEvent;->mErrorCode:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Landroid/media/metrics/PlaybackErrorEvent;->mSubErrorCode:I

    iget v4, v2, Landroid/media/metrics/PlaybackErrorEvent;->mSubErrorCode:I

    if-ne v3, v4, :cond_34

    iget-wide v3, p0, Landroid/media/metrics/PlaybackErrorEvent;->mTimeSinceCreatedMillis:J

    iget-wide v5, v2, Landroid/media/metrics/PlaybackErrorEvent;->mTimeSinceCreatedMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    :goto_35
    return v0

    :cond_36
    :goto_36
    return v1
.end method

.method public getErrorCode()I
    .registers 2

    iget v0, p0, Landroid/media/metrics/PlaybackErrorEvent;->mErrorCode:I

    return v0
.end method

.method public getExceptionStack()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/metrics/PlaybackErrorEvent;->mExceptionStack:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricsBundle()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/media/metrics/PlaybackErrorEvent;->mMetricsBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSubErrorCode()I
    .registers 2

    iget v0, p0, Landroid/media/metrics/PlaybackErrorEvent;->mSubErrorCode:I

    return v0
.end method

.method public getTimeSinceCreatedMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/media/metrics/PlaybackErrorEvent;->mTimeSinceCreatedMillis:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mExceptionStack:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mErrorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mSubErrorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mTimeSinceCreatedMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaybackErrorEvent { exceptionStack = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mExceptionStack:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subErrorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mSubErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeSinceCreatedMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mTimeSinceCreatedMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mExceptionStack:Ljava/lang/String;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mExceptionStack:Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_12
    iget v1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mErrorCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mSubErrorCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mTimeSinceCreatedMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Landroid/media/metrics/PlaybackErrorEvent;->mMetricsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
