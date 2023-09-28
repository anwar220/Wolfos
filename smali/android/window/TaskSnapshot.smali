# classes4.dex

.class public Landroid/window/TaskSnapshot;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TaskSnapshot$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TaskSnapshot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppearance:I

.field private mClassNameQS:Ljava/lang/String;

.field private final mColorSpace:Landroid/graphics/ColorSpace;

.field private final mContentInsets:Landroid/graphics/Rect;

.field private mFreeFormTaskBounds:Landroid/graphics/Rect;

.field private mFreeformScale:F

.field private final mHasImeSurface:Z

.field private final mId:J

.field private final mIsLowResolution:Z

.field private final mIsRealSnapshot:Z

.field private final mIsTranslucent:Z

.field private final mLetterboxInsets:Landroid/graphics/Rect;

.field private final mOrientation:I

.field private final mRotation:I

.field private final mSnapshot:Landroid/hardware/HardwareBuffer;

.field private final mTaskSize:Landroid/graphics/Point;

.field private final mTopActivityComponent:Landroid/content/ComponentName;

.field private final mWindowingMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/window/TaskSnapshot$1;

    invoke-direct {v0}, Landroid/window/TaskSnapshot$1;-><init>()V

    sput-object v0, Landroid/window/TaskSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZ)V
    .registers 33

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, v0, Landroid/window/TaskSnapshot;->mFreeformScale:F

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/window/TaskSnapshot;->mFreeFormTaskBounds:Landroid/graphics/Rect;

    move-wide/from16 v1, p1

    iput-wide v1, v0, Landroid/window/TaskSnapshot;->mId:J

    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/ColorSpace;->getId()I

    move-result v5

    if-gez v5, :cond_29

    sget-object v5, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v5}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v5

    goto :goto_2b

    :cond_29
    move-object/from16 v5, p5

    :goto_2b
    iput-object v5, v0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    move/from16 v5, p6

    iput v5, v0, Landroid/window/TaskSnapshot;->mOrientation:I

    move/from16 v6, p7

    iput v6, v0, Landroid/window/TaskSnapshot;->mRotation:I

    new-instance v7, Landroid/graphics/Point;

    move-object/from16 v8, p8

    invoke-direct {v7, v8}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v7, v0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v9, p9

    invoke-direct {v7, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v7, v0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v10, p10

    invoke-direct {v7, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v7, v0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    move/from16 v7, p11

    iput-boolean v7, v0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    move/from16 v11, p12

    iput-boolean v11, v0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    move/from16 v12, p13

    iput v12, v0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    move/from16 v13, p14

    iput v13, v0, Landroid/window/TaskSnapshot;->mAppearance:I

    move/from16 v14, p15

    iput-boolean v14, v0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    move/from16 v15, p16

    iput-boolean v15, v0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    return-void
.end method

.method public constructor <init>(JLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZFLandroid/graphics/Rect;)V
    .registers 35

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, v0, Landroid/window/TaskSnapshot;->mFreeformScale:F

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/window/TaskSnapshot;->mFreeFormTaskBounds:Landroid/graphics/Rect;

    move-wide/from16 v1, p1

    iput-wide v1, v0, Landroid/window/TaskSnapshot;->mId:J

    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/ColorSpace;->getId()I

    move-result v5

    if-gez v5, :cond_29

    sget-object v5, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v5}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v5

    goto :goto_2b

    :cond_29
    move-object/from16 v5, p5

    :goto_2b
    iput-object v5, v0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    move/from16 v5, p6

    iput v5, v0, Landroid/window/TaskSnapshot;->mOrientation:I

    move/from16 v6, p7

    iput v6, v0, Landroid/window/TaskSnapshot;->mRotation:I

    new-instance v7, Landroid/graphics/Point;

    move-object/from16 v8, p8

    invoke-direct {v7, v8}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v7, v0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v9, p9

    invoke-direct {v7, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v7, v0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v10, p10

    invoke-direct {v7, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v7, v0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    move/from16 v7, p11

    iput-boolean v7, v0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    move/from16 v11, p12

    iput-boolean v11, v0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    move/from16 v12, p13

    iput v12, v0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    move/from16 v13, p14

    iput v13, v0, Landroid/window/TaskSnapshot;->mAppearance:I

    move/from16 v14, p15

    iput-boolean v14, v0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    move/from16 v15, p16

    iput-boolean v15, v0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    move/from16 v1, p17

    iput v1, v0, Landroid/window/TaskSnapshot;->mFreeformScale:F

    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v1, p18

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v0, Landroid/window/TaskSnapshot;->mFreeFormTaskBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Landroid/window/TaskSnapshot;->mFreeformScale:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TaskSnapshot;->mFreeFormTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/TaskSnapshot;->mId:J

    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    sget-object v0, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_3c

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_3c

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    goto :goto_42

    :cond_3c
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    :goto_42
    iput-object v1, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TaskSnapshot;->mOrientation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TaskSnapshot;->mRotation:I

    sget-object v1, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iput-object v1, p0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/window/TaskSnapshot;->mAppearance:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/window/TaskSnapshot;->mFreeformScale:F

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/window/TaskSnapshot;->mFreeFormTaskBounds:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/window/TaskSnapshot-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TaskSnapshot;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAppearance()I
    .registers 2

    iget v0, p0, Landroid/window/TaskSnapshot;->mAppearance:I

    return v0
.end method

.method public getClassNameQS()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mClassNameQS:Ljava/lang/String;

    return-object v0
.end method

.method public getColorSpace()Landroid/graphics/ColorSpace;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public getContentInsets()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFreeformScale()F
    .registers 2

    iget v0, p0, Landroid/window/TaskSnapshot;->mFreeformScale:F

    return v0
.end method

.method public getFreeformTaskBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mFreeFormTaskBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method public getId()J
    .registers 3

    iget-wide v0, p0, Landroid/window/TaskSnapshot;->mId:J

    return-wide v0
.end method

.method public getLetterboxInsets()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    iget v0, p0, Landroid/window/TaskSnapshot;->mOrientation:I

    return v0
.end method

.method public getRotation()I
    .registers 2

    iget v0, p0, Landroid/window/TaskSnapshot;->mRotation:I

    return v0
.end method

.method public getSnapshot()Landroid/graphics/GraphicBuffer;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-static {v0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getTaskSize()Landroid/graphics/Point;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    return-object v0
.end method

.method public getTopActivityComponent()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getWindowingMode()I
    .registers 2

    iget v0, p0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    return v0
.end method

.method public hasImeSurface()Z
    .registers 2

    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    return v0
.end method

.method public isLowResolution()Z
    .registers 2

    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    return v0
.end method

.method public isRealSnapshot()Z
    .registers 2

    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    return v0
.end method

.method public isTranslucent()Z
    .registers 2

    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    return v0
.end method

.method public setClassNameQS(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/window/TaskSnapshot;->mClassNameQS:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    iget-object v2, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TaskSnapshot{ mId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/window/TaskSnapshot;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTopActivityComponent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSnapshot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mColorSpace="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/TaskSnapshot;->mOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/TaskSnapshot;->mRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTaskSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    invoke-virtual {v3}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mContentInsets="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLetterboxInsets="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsLowResolution="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsRealSnapshot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWindowingMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mAppearance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/TaskSnapshot;->mAppearance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsTranslucent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHasImeSurface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mFreeformScale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/TaskSnapshot;->mFreeformScale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mFreeFormTaskBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TaskSnapshot;->mFreeFormTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/window/TaskSnapshot;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mTopActivityComponent:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mSnapshot:Landroid/hardware/HardwareBuffer;

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TaskSnapshot;->mOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TaskSnapshot;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mTaskSize:Landroid/graphics/Point;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mLetterboxInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsLowResolution:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsRealSnapshot:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/window/TaskSnapshot;->mWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TaskSnapshot;->mAppearance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mIsTranslucent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/window/TaskSnapshot;->mHasImeSurface:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/window/TaskSnapshot;->mFreeformScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/window/TaskSnapshot;->mFreeFormTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
