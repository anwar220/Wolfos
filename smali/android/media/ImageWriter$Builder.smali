# classes2.dex

.class public final Landroid/media/ImageWriter$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDataSpace:I

.field private mHardwareBufferFormat:I

.field private mHeight:I

.field private mImageFormat:I

.field private mMaxImages:I

.field private mSurface:Landroid/view/Surface;

.field private mUsage:J

.field private mUseLegacyImageFormat:Z

.field private mUseSurfaceImageFormatInfo:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mWidth:I

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mHeight:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mMaxImages:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/ImageWriter$Builder;->mImageFormat:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/media/ImageWriter$Builder;->mUsage:J

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mHardwareBufferFormat:I

    iput v1, p0, Landroid/media/ImageWriter$Builder;->mDataSpace:I

    iput-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    iput-boolean v1, p0, Landroid/media/ImageWriter$Builder;->mUseLegacyImageFormat:Z

    iput-object p1, p0, Landroid/media/ImageWriter$Builder;->mSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public build()Landroid/media/ImageWriter;
    .registers 24

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/media/ImageWriter$Builder;->mUseLegacyImageFormat:Z

    if-eqz v1, :cond_1c

    new-instance v1, Landroid/media/ImageWriter;

    iget-object v3, v0, Landroid/media/ImageWriter$Builder;->mSurface:Landroid/view/Surface;

    iget v4, v0, Landroid/media/ImageWriter$Builder;->mMaxImages:I

    iget-boolean v5, v0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    iget v6, v0, Landroid/media/ImageWriter$Builder;->mImageFormat:I

    iget v7, v0, Landroid/media/ImageWriter$Builder;->mWidth:I

    iget v8, v0, Landroid/media/ImageWriter$Builder;->mHeight:I

    iget-wide v9, v0, Landroid/media/ImageWriter$Builder;->mUsage:J

    const/4 v11, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIIIJLandroid/media/ImageWriter-IA;)V

    return-object v1

    :cond_1c
    new-instance v1, Landroid/media/ImageWriter;

    iget-object v13, v0, Landroid/media/ImageWriter$Builder;->mSurface:Landroid/view/Surface;

    iget v14, v0, Landroid/media/ImageWriter$Builder;->mMaxImages:I

    iget-boolean v15, v0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    iget v2, v0, Landroid/media/ImageWriter$Builder;->mHardwareBufferFormat:I

    iget v3, v0, Landroid/media/ImageWriter$Builder;->mDataSpace:I

    iget v4, v0, Landroid/media/ImageWriter$Builder;->mWidth:I

    iget v5, v0, Landroid/media/ImageWriter$Builder;->mHeight:I

    iget-wide v6, v0, Landroid/media/ImageWriter$Builder;->mUsage:J

    const/16 v22, 0x0

    move-object v12, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move-wide/from16 v20, v6

    invoke-direct/range {v12 .. v22}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIIIIJLandroid/media/ImageWriter-IA;)V

    return-object v1
.end method

.method public setDataSpace(I)Landroid/media/ImageWriter$Builder;
    .registers 3

    iput p1, p0, Landroid/media/ImageWriter$Builder;->mDataSpace:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mImageFormat:I

    iput-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseLegacyImageFormat:Z

    iput-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    return-object p0
.end method

.method public setHardwareBufferFormat(I)Landroid/media/ImageWriter$Builder;
    .registers 3

    iput p1, p0, Landroid/media/ImageWriter$Builder;->mHardwareBufferFormat:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mImageFormat:I

    iput-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseLegacyImageFormat:Z

    iput-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    return-object p0
.end method

.method public setImageFormat(I)Landroid/media/ImageWriter$Builder;
    .registers 5

    invoke-static {p1}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p1}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_26

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid imageFormat is specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    :goto_26
    iput p1, p0, Landroid/media/ImageWriter$Builder;->mImageFormat:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseLegacyImageFormat:Z

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mHardwareBufferFormat:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ImageWriter$Builder;->mDataSpace:I

    iput-boolean v0, p0, Landroid/media/ImageWriter$Builder;->mUseSurfaceImageFormatInfo:Z

    return-object p0
.end method

.method public setMaxImages(I)Landroid/media/ImageWriter$Builder;
    .registers 2

    iput p1, p0, Landroid/media/ImageWriter$Builder;->mMaxImages:I

    return-object p0
.end method

.method public setUsage(J)Landroid/media/ImageWriter$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/media/ImageWriter$Builder;->mUsage:J

    return-object p0
.end method

.method public setWidthAndHeight(II)Landroid/media/ImageWriter$Builder;
    .registers 3

    iput p1, p0, Landroid/media/ImageWriter$Builder;->mWidth:I

    iput p2, p0, Landroid/media/ImageWriter$Builder;->mHeight:I

    return-object p0
.end method
