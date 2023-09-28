# classes3.dex

.class public Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenshotHardwareBuffer"
.end annotation


# instance fields
.field private final mColorSpace:Landroid/graphics/ColorSpace;

.field private final mContainsHdrLayers:Z

.field private final mContainsSecureLayers:Z

.field private final mHardwareBuffer:Landroid/hardware/HardwareBuffer;


# direct methods
.method public constructor <init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    iput-object p2, p0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    iput-boolean p3, p0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    iput-boolean p4, p0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    return-void
.end method

.method private static createFromNative(Landroid/hardware/HardwareBuffer;IZZ)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 6

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    new-instance v1, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    invoke-direct {v1, p0, v0, p2, p3}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;-><init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZ)V

    return-object v1
.end method


# virtual methods
.method public asBitmap()Landroid/graphics/Bitmap;
    .registers 3

    iget-object v0, p0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-nez v0, :cond_d

    const-string v0, "SurfaceControl"

    const-string v1, "Failed to take screenshot. Null screenshot object"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_d
    iget-object v1, p0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public containsHdrLayers()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    return v0
.end method

.method public containsSecureLayers()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    return v0
.end method

.method public getColorSpace()Landroid/graphics/ColorSpace;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 2

    iget-object v0, p0, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method
