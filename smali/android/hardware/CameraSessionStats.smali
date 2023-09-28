# classes.dex

.class public Landroid/hardware/CameraSessionStats;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CAMERA_API_LEVEL_1:I = 0x1

.field public static final CAMERA_API_LEVEL_2:I = 0x2

.field public static final CAMERA_FACING_BACK:I = 0x0

.field public static final CAMERA_FACING_EXTERNAL:I = 0x2

.field public static final CAMERA_FACING_FRONT:I = 0x1

.field public static final CAMERA_STATE_ACTIVE:I = 0x1

.field public static final CAMERA_STATE_CLOSED:I = 0x3

.field public static final CAMERA_STATE_IDLE:I = 0x2

.field public static final CAMERA_STATE_OPEN:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/CameraSessionStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApiLevel:I

.field private mCameraId:Ljava/lang/String;

.field private mClientName:Ljava/lang/String;

.field private mDeviceError:Z

.field private mFacing:I

.field private mInternalReconfigure:I

.field private mIsNdk:Z

.field private mLatencyMs:I

.field private mMaxPreviewFps:F

.field private mNewCameraState:I

.field private mRequestCount:J

.field private mResultErrorCount:J

.field private mSessionType:I

.field private mStreamStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/CameraStreamStats;",
            ">;"
        }
    .end annotation
.end field

.field private mUserTag:Ljava/lang/String;

.field private mVideoStabilizationMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/CameraSessionStats$1;

    invoke-direct {v0}, Landroid/hardware/CameraSessionStats$1;-><init>()V

    sput-object v0, Landroid/hardware/CameraSessionStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mFacing:I

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mNewCameraState:I

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mApiLevel:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/CameraSessionStats;->mIsNdk:Z

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mLatencyMs:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/CameraSessionStats;->mMaxPreviewFps:F

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mSessionType:I

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mInternalReconfigure:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/hardware/CameraSessionStats;->mRequestCount:J

    iput-wide v2, p0, Landroid/hardware/CameraSessionStats;->mResultErrorCount:J

    iput-boolean v1, p0, Landroid/hardware/CameraSessionStats;->mDeviceError:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/CameraSessionStats;->mStreamStats:Ljava/util/ArrayList;

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mVideoStabilizationMode:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/CameraSessionStats;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/CameraSessionStats-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/CameraSessionStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;IZIFII)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/CameraSessionStats;->mCameraId:Ljava/lang/String;

    iput p2, p0, Landroid/hardware/CameraSessionStats;->mFacing:I

    iput p3, p0, Landroid/hardware/CameraSessionStats;->mNewCameraState:I

    iput-object p4, p0, Landroid/hardware/CameraSessionStats;->mClientName:Ljava/lang/String;

    iput p5, p0, Landroid/hardware/CameraSessionStats;->mApiLevel:I

    iput-boolean p6, p0, Landroid/hardware/CameraSessionStats;->mIsNdk:Z

    iput p7, p0, Landroid/hardware/CameraSessionStats;->mLatencyMs:I

    iput p8, p0, Landroid/hardware/CameraSessionStats;->mMaxPreviewFps:F

    iput p9, p0, Landroid/hardware/CameraSessionStats;->mSessionType:I

    iput p10, p0, Landroid/hardware/CameraSessionStats;->mInternalReconfigure:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mStreamStats:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getApiLevel()I
    .registers 2

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mApiLevel:I

    return v0
.end method

.method public getCameraId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mClientName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceErrorFlag()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mDeviceError:Z

    return v0
.end method

.method public getFacing()I
    .registers 2

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mFacing:I

    return v0
.end method

.method public getInternalReconfigureCount()I
    .registers 2

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mInternalReconfigure:I

    return v0
.end method

.method public getLatencyMs()I
    .registers 2

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mLatencyMs:I

    return v0
.end method

.method public getMaxPreviewFps()F
    .registers 2

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mMaxPreviewFps:F

    return v0
.end method

.method public getNewCameraState()I
    .registers 2

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mNewCameraState:I

    return v0
.end method

.method public getRequestCount()J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/CameraSessionStats;->mRequestCount:J

    return-wide v0
.end method

.method public getResultErrorCount()J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/CameraSessionStats;->mResultErrorCount:J

    return-wide v0
.end method

.method public getSessionType()I
    .registers 2

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mSessionType:I

    return v0
.end method

.method public getStreamStats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/CameraStreamStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mStreamStats:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUserTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mUserTag:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoStabilizationMode()I
    .registers 2

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mVideoStabilizationMode:I

    return v0
.end method

.method public isNdk()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mIsNdk:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mFacing:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mNewCameraState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mClientName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mApiLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mIsNdk:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mLatencyMs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mMaxPreviewFps:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mSessionType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraSessionStats;->mInternalReconfigure:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraSessionStats;->mRequestCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraSessionStats;->mResultErrorCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mDeviceError:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Landroid/hardware/CameraStreamStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    iput-object v0, p0, Landroid/hardware/CameraSessionStats;->mStreamStats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/CameraSessionStats;->mUserTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/CameraSessionStats;->mVideoStabilizationMode:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mFacing:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mNewCameraState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mClientName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mApiLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mIsNdk:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mLatencyMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mMaxPreviewFps:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mSessionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mInternalReconfigure:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/hardware/CameraSessionStats;->mRequestCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/hardware/CameraSessionStats;->mResultErrorCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/hardware/CameraSessionStats;->mDeviceError:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mStreamStats:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/hardware/CameraSessionStats;->mUserTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/CameraSessionStats;->mVideoStabilizationMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
