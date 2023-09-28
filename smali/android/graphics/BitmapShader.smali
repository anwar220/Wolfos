# classes.dex

.class public Landroid/graphics/BitmapShader;
.super Landroid/graphics/Shader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapShader$FilterMode;
    }
.end annotation


# static fields
.field public static final FILTER_MODE_DEFAULT:I = 0x0

.field public static final FILTER_MODE_LINEAR:I = 0x2

.field public static final FILTER_MODE_NEAREST:I = 0x1


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field private mFilterFromPaint:Z

.field private mFilterMode:I

.field private mIsDirectSampled:Z

.field private mRequestDirectSampling:Z

.field private mTileX:I

.field private mTileY:I


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;II)V
    .registers 6

    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    if-eqz p1, :cond_15

    iput-object p1, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Landroid/graphics/BitmapShader;->mTileX:I

    iput p3, p0, Landroid/graphics/BitmapShader;->mTileY:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .registers 6

    iget v0, p2, Landroid/graphics/Shader$TileMode;->nativeInt:I

    iget v1, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    invoke-direct {p0, p1, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method private static native nativeCreate(JJIIZZ)J
.end method


# virtual methods
.method protected createNativeInstance(JZ)J
    .registers 15

    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    const/4 v2, 0x1

    goto :goto_9

    :cond_8
    move v2, v1

    :goto_9
    if-nez v0, :cond_f

    iput-boolean p3, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    iget-boolean v2, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    :cond_f
    iget-boolean v0, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    iput-boolean v1, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    iget-object v0, p0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v5

    iget v7, p0, Landroid/graphics/BitmapShader;->mTileX:I

    iget v8, p0, Landroid/graphics/BitmapShader;->mTileY:I

    iget-boolean v10, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    move-wide v3, p1

    move v9, v2

    invoke-static/range {v3 .. v10}, Landroid/graphics/BitmapShader;->nativeCreate(JJIIZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFilterMode()I
    .registers 2

    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    return v0
.end method

.method declared-synchronized getNativeInstanceWithDirectSampling()J
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    invoke-virtual {p0}, Landroid/graphics/BitmapShader;->getNativeInstance()J

    move-result-wide v0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-wide v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFilterMode(I)V
    .registers 3

    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    invoke-virtual {p0}, Landroid/graphics/BitmapShader;->discardNativeInstance()V

    :cond_9
    return-void
.end method

.method protected shouldDiscardNativeInstance(Z)Z
    .registers 4

    iget-boolean v0, p0, Landroid/graphics/BitmapShader;->mIsDirectSampled:Z

    iget-boolean v1, p0, Landroid/graphics/BitmapShader;->mRequestDirectSampling:Z

    if-ne v0, v1, :cond_11

    iget v0, p0, Landroid/graphics/BitmapShader;->mFilterMode:I

    if-nez v0, :cond_f

    iget-boolean v0, p0, Landroid/graphics/BitmapShader;->mFilterFromPaint:Z

    if-eq v0, p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method
