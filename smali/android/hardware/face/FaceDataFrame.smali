# classes.dex

.class public final Landroid/hardware/face/FaceDataFrame;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/face/FaceDataFrame;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAcquiredInfo:I

.field private final mDistance:F

.field private final mIsCancellable:Z

.field private final mPan:F

.field private final mTilt:F

.field private final mVendorCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/face/FaceDataFrame$1;

    invoke-direct {v0}, Landroid/hardware/face/FaceDataFrame$1;-><init>()V

    sput-object v0, Landroid/hardware/face/FaceDataFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/face/FaceDataFrame;->mAcquiredInfo:I

    iput p2, p0, Landroid/hardware/face/FaceDataFrame;->mVendorCode:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mPan:F

    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mTilt:F

    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mDistance:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/face/FaceDataFrame;->mIsCancellable:Z

    return-void
.end method

.method public constructor <init>(IIFFFZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/face/FaceDataFrame;->mAcquiredInfo:I

    iput p2, p0, Landroid/hardware/face/FaceDataFrame;->mVendorCode:I

    iput p3, p0, Landroid/hardware/face/FaceDataFrame;->mPan:F

    iput p4, p0, Landroid/hardware/face/FaceDataFrame;->mTilt:F

    iput p5, p0, Landroid/hardware/face/FaceDataFrame;->mDistance:F

    iput-boolean p6, p0, Landroid/hardware/face/FaceDataFrame;->mIsCancellable:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mAcquiredInfo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mVendorCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mPan:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mTilt:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceDataFrame;->mDistance:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/face/FaceDataFrame;->mIsCancellable:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/face/FaceDataFrame-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/face/FaceDataFrame;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAcquiredInfo()I
    .registers 2

    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mAcquiredInfo:I

    return v0
.end method

.method public getDistance()F
    .registers 2

    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mDistance:F

    return v0
.end method

.method public getPan()F
    .registers 2

    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mPan:F

    return v0
.end method

.method public getTilt()F
    .registers 2

    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mTilt:F

    return v0
.end method

.method public getVendorCode()I
    .registers 2

    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mVendorCode:I

    return v0
.end method

.method public isCancellable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/face/FaceDataFrame;->mIsCancellable:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mAcquiredInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mVendorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mPan:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mTilt:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/face/FaceDataFrame;->mDistance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Landroid/hardware/face/FaceDataFrame;->mIsCancellable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
