# classes2.dex

.class public final Landroid/media/tv/TvInputHardwareInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputHardwareInfo$Builder;,
        Landroid/media/tv/TvInputHardwareInfo$CableConnectionStatus;
    }
.end annotation


# static fields
.field public static final CABLE_CONNECTION_STATUS_CONNECTED:I = 0x1

.field public static final CABLE_CONNECTION_STATUS_DISCONNECTED:I = 0x2

.field public static final CABLE_CONNECTION_STATUS_UNKNOWN:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "TvInputHardwareInfo"

.field public static final TV_INPUT_TYPE_COMPONENT:I = 0x6

.field public static final TV_INPUT_TYPE_COMPOSITE:I = 0x3

.field public static final TV_INPUT_TYPE_DISPLAY_PORT:I = 0xa

.field public static final TV_INPUT_TYPE_DVI:I = 0x8

.field public static final TV_INPUT_TYPE_HDMI:I = 0x9

.field public static final TV_INPUT_TYPE_OTHER_HARDWARE:I = 0x1

.field public static final TV_INPUT_TYPE_SCART:I = 0x5

.field public static final TV_INPUT_TYPE_SVIDEO:I = 0x4

.field public static final TV_INPUT_TYPE_TUNER:I = 0x2

.field public static final TV_INPUT_TYPE_VGA:I = 0x7


# instance fields
.field private mAudioAddress:Ljava/lang/String;

.field private mAudioType:I

.field private mCableConnectionStatus:I

.field private mDeviceId:I

.field private mHdmiPortId:I

.field private mType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioType(Landroid/media/tv/TvInputHardwareInfo;)I
    .registers 1

    iget p0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAudioAddress(Landroid/media/tv/TvInputHardwareInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAudioType(Landroid/media/tv/TvInputHardwareInfo;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCableConnectionStatus(Landroid/media/tv/TvInputHardwareInfo;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDeviceId(Landroid/media/tv/TvInputHardwareInfo;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHdmiPortId(Landroid/media/tv/TvInputHardwareInfo;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmType(Landroid/media/tv/TvInputHardwareInfo;I)V
    .registers 2

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/tv/TvInputHardwareInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TvInputHardwareInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvInputHardwareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/TvInputHardwareInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/TvInputHardwareInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAudioAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioType()I
    .registers 2

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    return v0
.end method

.method public getCableConnectionStatus()I
    .registers 2

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    return v0
.end method

.method public getDeviceId()I
    .registers 2

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    return v0
.end method

.method public getHdmiPortId()I
    .registers 3

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_9

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    return v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_24

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    :cond_24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    return-void
.end method

.method public toBuilder()Landroid/media/tv/TvInputHardwareInfo$Builder;
    .registers 4

    new-instance v0, Landroid/media/tv/TvInputHardwareInfo$Builder;

    invoke-direct {v0}, Landroid/media/tv/TvInputHardwareInfo$Builder;-><init>()V

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->deviceId(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->type(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->audioType(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->audioAddress(Ljava/lang/String;)Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->cableConnectionStatus(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2e

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputHardwareInfo$Builder;->hdmiPortId(I)Landroid/media/tv/TvInputHardwareInfo$Builder;

    :cond_2e
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "TvInputHardwareInfo {id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audio_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audio_addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_44

    const-string v1, ", hdmi_port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_44
    const-string v1, ", cable_connection_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1f

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1f
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
