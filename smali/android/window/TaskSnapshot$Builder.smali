# classes4.dex

.class public final Landroid/window/TaskSnapshot$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAppearance:I

.field private mColorSpace:Landroid/graphics/ColorSpace;

.field private mContentInsets:Landroid/graphics/Rect;

.field private mFreeformScale:F

.field private mFreeformTaskBounds:Landroid/graphics/Rect;

.field private mHasImeSurface:Z

.field private mId:J

.field private mIsQs:Z

.field private mIsRealSnapshot:Z

.field private mIsTranslucent:Z

.field private mLetterboxInsets:Landroid/graphics/Rect;

.field private mOrientation:I

.field private mPixelFormat:I

.field private mRotation:I

.field private mSnapshot:Landroid/hardware/HardwareBuffer;

.field private mTaskSize:Landroid/graphics/Point;

.field private mTopActivity:Landroid/content/ComponentName;

.field private mWindowingMode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Landroid/window/TaskSnapshot$Builder;->mFreeformScale:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TaskSnapshot$Builder;->mFreeformTaskBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public build()Landroid/window/TaskSnapshot;
    .registers 22

    move-object/from16 v0, p0

    new-instance v20, Landroid/window/TaskSnapshot;

    move-object/from16 v1, v20

    iget-wide v2, v0, Landroid/window/TaskSnapshot$Builder;->mId:J

    iget-object v4, v0, Landroid/window/TaskSnapshot$Builder;->mTopActivity:Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/window/TaskSnapshot$Builder;->mSnapshot:Landroid/hardware/HardwareBuffer;

    iget-object v6, v0, Landroid/window/TaskSnapshot$Builder;->mColorSpace:Landroid/graphics/ColorSpace;

    iget v7, v0, Landroid/window/TaskSnapshot$Builder;->mOrientation:I

    iget v8, v0, Landroid/window/TaskSnapshot$Builder;->mRotation:I

    iget-object v9, v0, Landroid/window/TaskSnapshot$Builder;->mTaskSize:Landroid/graphics/Point;

    iget-object v10, v0, Landroid/window/TaskSnapshot$Builder;->mContentInsets:Landroid/graphics/Rect;

    iget-object v11, v0, Landroid/window/TaskSnapshot$Builder;->mLetterboxInsets:Landroid/graphics/Rect;

    iget-boolean v13, v0, Landroid/window/TaskSnapshot$Builder;->mIsRealSnapshot:Z

    iget v14, v0, Landroid/window/TaskSnapshot$Builder;->mWindowingMode:I

    iget v15, v0, Landroid/window/TaskSnapshot$Builder;->mAppearance:I

    iget-boolean v12, v0, Landroid/window/TaskSnapshot$Builder;->mIsTranslucent:Z

    move/from16 v16, v12

    iget-boolean v12, v0, Landroid/window/TaskSnapshot$Builder;->mHasImeSurface:Z

    move/from16 v17, v12

    iget v12, v0, Landroid/window/TaskSnapshot$Builder;->mFreeformScale:F

    move/from16 v18, v12

    iget-object v12, v0, Landroid/window/TaskSnapshot$Builder;->mFreeformTaskBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v12

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v19}, Landroid/window/TaskSnapshot;-><init>(JLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZFLandroid/graphics/Rect;)V

    return-object v20
.end method

.method public getFreeformScale()F
    .registers 2

    iget v0, p0, Landroid/window/TaskSnapshot$Builder;->mFreeformScale:F

    return v0
.end method

.method public getFreeformTaskBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskSnapshot$Builder;->mFreeformTaskBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPixelFormat()I
    .registers 2

    iget v0, p0, Landroid/window/TaskSnapshot$Builder;->mPixelFormat:I

    return v0
.end method

.method public isQs()Z
    .registers 2

    iget-boolean v0, p0, Landroid/window/TaskSnapshot$Builder;->mIsQs:Z

    return v0
.end method

.method public setAppearance(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mAppearance:I

    return-object p0
.end method

.method public setColorSpace(Landroid/graphics/ColorSpace;)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object p0
.end method

.method public setContentInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mContentInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public setFreeformScale(F)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mFreeformScale:F

    return-object p0
.end method

.method public setFreeformTaskBounds(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;
    .registers 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/window/TaskSnapshot$Builder;->mFreeformTaskBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public setHasImeSurface(Z)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mHasImeSurface:Z

    return-object p0
.end method

.method public setId(J)Landroid/window/TaskSnapshot$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/window/TaskSnapshot$Builder;->mId:J

    return-object p0
.end method

.method public setIsQs(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mIsQs:Z

    return-void
.end method

.method public setIsRealSnapshot(Z)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mIsRealSnapshot:Z

    return-object p0
.end method

.method public setIsTranslucent(Z)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/window/TaskSnapshot$Builder;->mIsTranslucent:Z

    return-object p0
.end method

.method public setLetterboxInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mLetterboxInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public setOrientation(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mOrientation:I

    return-object p0
.end method

.method public setPixelFormat(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mPixelFormat:I

    return-object p0
.end method

.method public setRotation(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mRotation:I

    return-object p0
.end method

.method public setSnapshot(Landroid/hardware/HardwareBuffer;)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mSnapshot:Landroid/hardware/HardwareBuffer;

    return-object p0
.end method

.method public setTaskSize(Landroid/graphics/Point;)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mTaskSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public setTopActivityComponent(Landroid/content/ComponentName;)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    iput-object p1, p0, Landroid/window/TaskSnapshot$Builder;->mTopActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setWindowingMode(I)Landroid/window/TaskSnapshot$Builder;
    .registers 2

    iput p1, p0, Landroid/window/TaskSnapshot$Builder;->mWindowingMode:I

    return-object p0
.end method
