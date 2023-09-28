# classes.dex

.class public Landroid/hardware/CameraStreamStats;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/CameraStreamStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final HISTOGRAM_TYPE_CAPTURE_LATENCY:I = 0x1

.field public static final HISTOGRAM_TYPE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraStreamStats"


# instance fields
.field private mDataSpace:I

.field private mDynamicRangeProfile:J

.field private mErrorCount:J

.field private mFormat:I

.field private mHeight:I

.field private mHistogramBins:[F

.field private mHistogramCounts:[J

.field private mHistogramType:I

.field private mMaxAppBuffers:I

.field private mMaxHalBuffers:I

.field private mMaxPreviewFps:F

.field private mRequestCount:J

.field private mStartLatencyMs:I

.field private mStreamUseCase:J

.field private mUsage:J

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/CameraStreamStats$1;

    invoke-direct {v0}, Landroid/hardware/CameraStreamStats$1;-><init>()V

    sput-object v0, Landroid/hardware/CameraStreamStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mWidth:I

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mHeight:I

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mFormat:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/CameraStreamStats;->mMaxPreviewFps:F

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mDataSpace:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/CameraStreamStats;->mUsage:J

    iput-wide v1, p0, Landroid/hardware/CameraStreamStats;->mRequestCount:J

    iput-wide v1, p0, Landroid/hardware/CameraStreamStats;->mErrorCount:J

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mStartLatencyMs:I

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mMaxHalBuffers:I

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mMaxAppBuffers:I

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramType:I

    const-wide/16 v3, 0x1

    iput-wide v3, p0, Landroid/hardware/CameraStreamStats;->mDynamicRangeProfile:J

    iput-wide v1, p0, Landroid/hardware/CameraStreamStats;->mStreamUseCase:J

    return-void
.end method

.method public constructor <init>(IIIFIJJJIIIJJ)V
    .registers 35

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Landroid/hardware/CameraStreamStats;->mWidth:I

    move/from16 v2, p2

    iput v2, v0, Landroid/hardware/CameraStreamStats;->mHeight:I

    move/from16 v3, p3

    iput v3, v0, Landroid/hardware/CameraStreamStats;->mFormat:I

    move/from16 v4, p4

    iput v4, v0, Landroid/hardware/CameraStreamStats;->mMaxPreviewFps:F

    move/from16 v5, p5

    iput v5, v0, Landroid/hardware/CameraStreamStats;->mDataSpace:I

    move-wide/from16 v6, p6

    iput-wide v6, v0, Landroid/hardware/CameraStreamStats;->mUsage:J

    move-wide/from16 v8, p8

    iput-wide v8, v0, Landroid/hardware/CameraStreamStats;->mRequestCount:J

    move-wide/from16 v10, p10

    iput-wide v10, v0, Landroid/hardware/CameraStreamStats;->mErrorCount:J

    move/from16 v12, p12

    iput v12, v0, Landroid/hardware/CameraStreamStats;->mStartLatencyMs:I

    move/from16 v13, p13

    iput v13, v0, Landroid/hardware/CameraStreamStats;->mMaxHalBuffers:I

    move/from16 v14, p14

    iput v14, v0, Landroid/hardware/CameraStreamStats;->mMaxAppBuffers:I

    const/4 v15, 0x0

    iput v15, v0, Landroid/hardware/CameraStreamStats;->mHistogramType:I

    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroid/hardware/CameraStreamStats;->mDynamicRangeProfile:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Landroid/hardware/CameraStreamStats;->mStreamUseCase:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/CameraStreamStats;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/CameraStreamStats-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/CameraStreamStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDataSpace()I
    .registers 2

    iget v0, p0, Landroid/hardware/CameraStreamStats;->mDataSpace:I

    return v0
.end method

.method public getDynamicRangeProfile()J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mDynamicRangeProfile:J

    return-wide v0
.end method

.method public getErrorCount()J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mErrorCount:J

    return-wide v0
.end method

.method public getFormat()I
    .registers 2

    iget v0, p0, Landroid/hardware/CameraStreamStats;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Landroid/hardware/CameraStreamStats;->mHeight:I

    return v0
.end method

.method public getHistogramBins()[F
    .registers 2

    iget-object v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramBins:[F

    return-object v0
.end method

.method public getHistogramCounts()[J
    .registers 2

    iget-object v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramCounts:[J

    return-object v0
.end method

.method public getHistogramType()I
    .registers 2

    iget v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramType:I

    return v0
.end method

.method public getMaxAppBuffers()I
    .registers 2

    iget v0, p0, Landroid/hardware/CameraStreamStats;->mMaxAppBuffers:I

    return v0
.end method

.method public getMaxHalBuffers()I
    .registers 2

    iget v0, p0, Landroid/hardware/CameraStreamStats;->mMaxHalBuffers:I

    return v0
.end method

.method public getMaxPreviewFps()F
    .registers 2

    iget v0, p0, Landroid/hardware/CameraStreamStats;->mMaxPreviewFps:F

    return v0
.end method

.method public getRequestCount()J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mRequestCount:J

    return-wide v0
.end method

.method public getStartLatencyMs()I
    .registers 2

    iget v0, p0, Landroid/hardware/CameraStreamStats;->mStartLatencyMs:I

    return v0
.end method

.method public getStreamUseCase()J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mStreamUseCase:J

    return-wide v0
.end method

.method public getUsage()J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mUsage:J

    return-wide v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Landroid/hardware/CameraStreamStats;->mWidth:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mFormat:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mMaxPreviewFps:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mDataSpace:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraStreamStats;->mUsage:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraStreamStats;->mRequestCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraStreamStats;->mErrorCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mStartLatencyMs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mMaxHalBuffers:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mMaxAppBuffers:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramBins:[F

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramCounts:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraStreamStats;->mDynamicRangeProfile:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/CameraStreamStats;->mStreamUseCase:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/hardware/CameraStreamStats;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/CameraStreamStats;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/CameraStreamStats;->mFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/CameraStreamStats;->mMaxPreviewFps:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/CameraStreamStats;->mDataSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mUsage:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mRequestCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mErrorCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/hardware/CameraStreamStats;->mStartLatencyMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/CameraStreamStats;->mMaxHalBuffers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/CameraStreamStats;->mMaxAppBuffers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramBins:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object v0, p0, Landroid/hardware/CameraStreamStats;->mHistogramCounts:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mDynamicRangeProfile:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/hardware/CameraStreamStats;->mStreamUseCase:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
