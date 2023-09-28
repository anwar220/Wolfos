# classes.dex

.class public Landroid/hardware/camera2/MultiResolutionImageReader;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiResolutionImageReader"


# instance fields
.field private final mFormat:I

.field private final mMaxImages:I

.field private final mReaders:[Landroid/media/ImageReader;

.field private final mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;


# direct methods
.method public constructor <init>(Ljava/util/Collection;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mFormat:I

    iput p3, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mMaxImages:I

    if-eqz p1, :cond_5c

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5c

    if-lt p3, v1, :cond_54

    const/16 v0, 0x11

    if-eq p2, v0, :cond_4c

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v1, v0, [Landroid/media/ImageReader;

    iput-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    new-array v1, v0, [Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    iput-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    iget-object v4, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v6

    invoke-static {v5, v6, p2, p3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v4, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    aput-object v3, v4, v1

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_4b
    return-void

    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NV21 format is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum outstanding image count must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The streams info collection must contain at least 2 entries"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 4

    invoke-virtual {p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->flush()V

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v2, v1

    if-ge v0, v2, :cond_11

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_11
    return-void
.end method

.method protected finalize()V
    .registers 1

    invoke-virtual {p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->close()V

    return-void
.end method

.method public flush()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/MultiResolutionImageReader;->flushOther(Landroid/media/ImageReader;)V

    return-void
.end method

.method public flushOther(Landroid/media/ImageReader;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v2, v1

    if-ge v0, v2, :cond_1f

    if-eqz p1, :cond_d

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_d

    goto :goto_18

    :cond_d
    :goto_d
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->acquireNextImageNoThrowISE()Landroid/media/Image;

    move-result-object v1

    if-nez v1, :cond_1b

    nop

    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    goto :goto_d

    :cond_1f
    return-void
.end method

.method public getReaders()[Landroid/media/ImageReader;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    return-object v0
.end method

.method public getStreamInfoForImageReader(Landroid/media/ImageReader;)Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v2, v1

    if-ge v0, v2, :cond_12

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_f

    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    aget-object v1, v1, v0

    return-object v1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageReader doesn\'t belong to this multi-resolution imagereader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 6

    iget-object v0, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    iget-object v2, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/ImageReader;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    iget-object v2, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v2, 0x1

    :goto_1b
    iget-object v3, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v4, v3

    if-ge v2, v4, :cond_3d

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/media/ImageReader;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/media/ImageReader;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    if-ge v3, v0, :cond_3a

    move v0, v3

    iget-object v4, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_3d
    return-object v1
.end method

.method public setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/media/ImageReader;->setOnImageAvailableListenerWithExecutor(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method
