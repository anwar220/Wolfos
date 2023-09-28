# classes2.dex

.class public Landroid/hardware/input/InputSensorInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/InputSensorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFifoMaxEventCount:I

.field private mFifoReservedEventCount:I

.field private mFlags:I

.field private mHandle:I

.field private mId:I

.field private mMaxDelay:I

.field private mMaxRange:F

.field private mMinDelay:I

.field private mName:Ljava/lang/String;

.field private mPower:F

.field private mRequiredPermission:Ljava/lang/String;

.field private mResolution:F

.field private mStringType:Ljava/lang/String;

.field private mType:I

.field private mVendor:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/input/InputSensorInfo$1;

    invoke-direct {v0}, Landroid/hardware/input/InputSensorInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/input/InputSensorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 21

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move/from16 v16, v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    iput-object v1, v0, Landroid/hardware/input/InputSensorInfo;->mName:Ljava/lang/String;

    move/from16 v17, v15

    const-class v15, Landroid/annotation/NonNull;

    move/from16 v18, v14

    const/4 v14, 0x0

    invoke-static {v15, v14, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v2, v0, Landroid/hardware/input/InputSensorInfo;->mVendor:Ljava/lang/String;

    const-class v15, Landroid/annotation/NonNull;

    invoke-static {v15, v14, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v3, v0, Landroid/hardware/input/InputSensorInfo;->mVersion:I

    iput v4, v0, Landroid/hardware/input/InputSensorInfo;->mHandle:I

    iput v5, v0, Landroid/hardware/input/InputSensorInfo;->mType:I

    iput v6, v0, Landroid/hardware/input/InputSensorInfo;->mMaxRange:F

    iput v7, v0, Landroid/hardware/input/InputSensorInfo;->mResolution:F

    iput v8, v0, Landroid/hardware/input/InputSensorInfo;->mPower:F

    iput v9, v0, Landroid/hardware/input/InputSensorInfo;->mMinDelay:I

    iput v10, v0, Landroid/hardware/input/InputSensorInfo;->mFifoReservedEventCount:I

    iput v11, v0, Landroid/hardware/input/InputSensorInfo;->mFifoMaxEventCount:I

    iput-object v12, v0, Landroid/hardware/input/InputSensorInfo;->mStringType:Ljava/lang/String;

    const-class v15, Landroid/annotation/NonNull;

    invoke-static {v15, v14, v12}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v13, v0, Landroid/hardware/input/InputSensorInfo;->mRequiredPermission:Ljava/lang/String;

    const-class v15, Landroid/annotation/NonNull;

    invoke-static {v15, v14, v13}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    move/from16 v14, v18

    iput v14, v0, Landroid/hardware/input/InputSensorInfo;->mMaxDelay:I

    move/from16 v15, v16

    iput v15, v0, Landroid/hardware/input/InputSensorInfo;->mFlags:I

    move-object/from16 v16, v1

    move/from16 v1, v17

    iput v1, v0, Landroid/hardware/input/InputSensorInfo;->mId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIFFFIIILjava/lang/String;Ljava/lang/String;III)V
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p12

    move-object/from16 v4, p13

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroid/hardware/input/InputSensorInfo;->mName:Ljava/lang/String;

    const-class v5, Landroid/annotation/NonNull;

    const/4 v6, 0x0

    invoke-static {v5, v6, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v2, v0, Landroid/hardware/input/InputSensorInfo;->mVendor:Ljava/lang/String;

    const-class v5, Landroid/annotation/NonNull;

    invoke-static {v5, v6, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    move/from16 v5, p3

    iput v5, v0, Landroid/hardware/input/InputSensorInfo;->mVersion:I

    move/from16 v7, p4

    iput v7, v0, Landroid/hardware/input/InputSensorInfo;->mHandle:I

    move/from16 v8, p5

    iput v8, v0, Landroid/hardware/input/InputSensorInfo;->mType:I

    move/from16 v9, p6

    iput v9, v0, Landroid/hardware/input/InputSensorInfo;->mMaxRange:F

    move/from16 v10, p7

    iput v10, v0, Landroid/hardware/input/InputSensorInfo;->mResolution:F

    move/from16 v11, p8

    iput v11, v0, Landroid/hardware/input/InputSensorInfo;->mPower:F

    move/from16 v12, p9

    iput v12, v0, Landroid/hardware/input/InputSensorInfo;->mMinDelay:I

    move/from16 v13, p10

    iput v13, v0, Landroid/hardware/input/InputSensorInfo;->mFifoReservedEventCount:I

    move/from16 v14, p11

    iput v14, v0, Landroid/hardware/input/InputSensorInfo;->mFifoMaxEventCount:I

    iput-object v3, v0, Landroid/hardware/input/InputSensorInfo;->mStringType:Ljava/lang/String;

    const-class v15, Landroid/annotation/NonNull;

    invoke-static {v15, v6, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v4, v0, Landroid/hardware/input/InputSensorInfo;->mRequiredPermission:Ljava/lang/String;

    const-class v15, Landroid/annotation/NonNull;

    invoke-static {v15, v6, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    move/from16 v6, p14

    iput v6, v0, Landroid/hardware/input/InputSensorInfo;->mMaxDelay:I

    move/from16 v15, p15

    iput v15, v0, Landroid/hardware/input/InputSensorInfo;->mFlags:I

    move/from16 v1, p16

    iput v1, v0, Landroid/hardware/input/InputSensorInfo;->mId:I

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getFifoMaxEventCount()I
    .registers 2

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mFifoMaxEventCount:I

    return v0
.end method

.method public getFifoReservedEventCount()I
    .registers 2

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mFifoReservedEventCount:I

    return v0
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mFlags:I

    return v0
.end method

.method public getHandle()I
    .registers 2

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mHandle:I

    return v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mId:I

    return v0
.end method

.method public getMaxDelay()I
    .registers 2

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mMaxDelay:I

    return v0
.end method

.method public getMaxRange()F
    .registers 2

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mMaxRange:F

    return v0
.end method

.method public getMinDelay()I
    .registers 2

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mMinDelay:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/input/InputSensorInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()F
    .registers 2

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mPower:F

    return v0
.end method

.method public getRequiredPermission()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/input/InputSensorInfo;->mRequiredPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()F
    .registers 2

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mResolution:F

    return v0
.end method

.method public getStringType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/input/InputSensorInfo;->mStringType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mType:I

    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/input/InputSensorInfo;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mVersion:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputSensorInfo { name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputSensorInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vendor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputSensorInfo;->mVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", handle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxRange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mMaxRange:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resolution = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mResolution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", power = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mPower:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minDelay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mMinDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fifoReservedEventCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mFifoReservedEventCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fifoMaxEventCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mFifoMaxEventCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stringType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputSensorInfo;->mStringType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requiredPermission = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputSensorInfo;->mRequiredPermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxDelay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mMaxDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/InputSensorInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/input/InputSensorInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/input/InputSensorInfo;->mVendor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mMaxRange:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mResolution:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mPower:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mMinDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mFifoReservedEventCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mFifoMaxEventCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/input/InputSensorInfo;->mStringType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/input/InputSensorInfo;->mRequiredPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mMaxDelay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/InputSensorInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
