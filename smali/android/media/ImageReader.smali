# classes2.dex

.class public Landroid/media/ImageReader;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageReader$ImagePlane;,
        Landroid/media/ImageReader$SurfaceImage;,
        Landroid/media/ImageReader$HandlerExecutor;,
        Landroid/media/ImageReader$ListenerHandler;,
        Landroid/media/ImageReader$Builder;,
        Landroid/media/ImageReader$OnImageAvailableListener;
    }
.end annotation


# static fields
.field private static final ACQUIRE_MAX_IMAGES:I = 0x2

.field private static final ACQUIRE_NO_BUFS:I = 0x1

.field private static final ACQUIRE_SUCCESS:I


# instance fields
.field private mAcquiredImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloseLock:Ljava/lang/Object;

.field private final mDataSpace:I

.field private mEstimatedNativeAllocBytes:I

.field private final mFormat:I

.field private final mHardwareBufferFormat:I

.field private final mHeight:I

.field private mIsReaderValid:Z

.field private mListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mListenerExecutor:Ljava/util/concurrent/Executor;

.field private mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

.field private final mListenerLock:Ljava/lang/Object;

.field private final mMaxImages:I

.field private mNativeContext:J

.field private final mNumPlanes:I

.field private final mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

.field private mSurface:Landroid/view/Surface;

.field private final mUsage:J

.field private final mUseLegacyImageFormat:Z

.field private final mWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDataSpace(Landroid/media/ImageReader;)I
    .registers 1

    iget p0, p0, Landroid/media/ImageReader;->mDataSpace:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFormat(Landroid/media/ImageReader;)I
    .registers 1

    iget p0, p0, Landroid/media/ImageReader;->mFormat:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHardwareBufferFormat(Landroid/media/ImageReader;)I
    .registers 1

    iget p0, p0, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNumPlanes(Landroid/media/ImageReader;)I
    .registers 1

    iget p0, p0, Landroid/media/ImageReader;->mNumPlanes:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsage(Landroid/media/ImageReader;)J
    .registers 3

    iget-wide v0, p0, Landroid/media/ImageReader;->mUsage:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmUseLegacyImageFormat(Landroid/media/ImageReader;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/ImageReader;->mUseLegacyImageFormat:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mreleaseImage(Landroid/media/ImageReader;Landroid/media/Image;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/ImageReader;->releaseImage(Landroid/media/Image;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/ImageReader;->nativeClassInit()V

    return-void
.end method

.method private constructor <init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V
    .registers 26

    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v10, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v10, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, v10, Landroid/media/ImageReader;->mIsReaderValid:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v10, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    move/from16 v11, p1

    iput v11, v10, Landroid/media/ImageReader;->mWidth:I

    move/from16 v12, p2

    iput v12, v10, Landroid/media/ImageReader;->mHeight:I

    move/from16 v13, p3

    iput v13, v10, Landroid/media/ImageReader;->mFormat:I

    move-wide/from16 v14, p5

    iput-wide v14, v10, Landroid/media/ImageReader;->mUsage:J

    move/from16 v9, p4

    iput v9, v10, Landroid/media/ImageReader;->mMaxImages:I

    move-object/from16 v8, p7

    iput-object v8, v10, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    invoke-static/range {p3 .. p3}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v7

    iput v7, v10, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    invoke-static/range {p3 .. p3}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v5

    iput v5, v10, Landroid/media/ImageReader;->mDataSpace:I

    const/4 v6, 0x1

    iput-boolean v6, v10, Landroid/media/ImageReader;->mUseLegacyImageFormat:Z

    invoke-static/range {p3 .. p3}, Landroid/media/ImageUtils;->getNumPlanesForFormat(I)I

    move-result v0

    iput v0, v10, Landroid/media/ImageReader;->mNumPlanes:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v16, v5

    move/from16 v17, v6

    move-wide/from16 v5, p5

    move/from16 v8, v16

    move/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Landroid/media/ImageReader;->initializeImageReader(IIIIJIIZ)V

    return-void
.end method

.method synthetic constructor <init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;Landroid/media/ImageReader-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/media/ImageReader;-><init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V

    return-void
.end method

.method private constructor <init>(IIIJLandroid/hardware/camera2/MultiResolutionImageReader;II)V
    .registers 26

    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v10, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v10, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, v10, Landroid/media/ImageReader;->mIsReaderValid:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v10, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    move/from16 v11, p1

    iput v11, v10, Landroid/media/ImageReader;->mWidth:I

    move/from16 v12, p2

    iput v12, v10, Landroid/media/ImageReader;->mHeight:I

    const/4 v3, 0x0

    iput v3, v10, Landroid/media/ImageReader;->mFormat:I

    move-wide/from16 v13, p4

    iput-wide v13, v10, Landroid/media/ImageReader;->mUsage:J

    move/from16 v15, p3

    iput v15, v10, Landroid/media/ImageReader;->mMaxImages:I

    move-object/from16 v9, p6

    iput-object v9, v10, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    move/from16 v8, p7

    iput v8, v10, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    move/from16 v7, p8

    iput v7, v10, Landroid/media/ImageReader;->mDataSpace:I

    const/4 v5, 0x0

    iput-boolean v5, v10, Landroid/media/ImageReader;->mUseLegacyImageFormat:Z

    invoke-static/range {p7 .. p7}, Landroid/media/ImageUtils;->getNumPlanesForHardwareBufferFormat(I)I

    move-result v0

    iput v0, v10, Landroid/media/ImageReader;->mNumPlanes:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p3

    move/from16 v16, v5

    move-wide/from16 v5, p4

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Landroid/media/ImageReader;->initializeImageReader(IIIIJIIZ)V

    return-void
.end method

.method synthetic constructor <init>(IIIJLandroid/hardware/camera2/MultiResolutionImageReader;IILandroid/media/ImageReader-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/ImageReader;-><init>(IIIJLandroid/hardware/camera2/MultiResolutionImageReader;II)V

    return-void
.end method

.method private acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I
    .registers 7

    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iget-boolean v2, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Landroid/media/ImageReader;->mUseLegacyImageFormat:Z

    invoke-direct {p0, p1, v2}, Landroid/media/ImageReader;->nativeImageSetup(Landroid/media/Image;Z)I

    move-result v2

    move v1, v2

    :cond_f
    packed-switch v1, :pswitch_data_3c

    new-instance v2, Ljava/lang/AssertionError;

    goto :goto_22

    :pswitch_15  #0x0
    const/4 v2, 0x1

    iput-boolean v2, p1, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    :pswitch_18  #0x1, 0x2
    nop

    if-nez v1, :cond_20

    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    monitor-exit v0

    return v1

    :goto_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown nativeImageSetup return code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_39

    throw v1

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_15  #00000000
        :pswitch_18  #00000001
        :pswitch_18  #00000002
    .end packed-switch
.end method

.method public static initializeImagePlanes(ILandroid/graphics/GraphicBuffer;IIJIILandroid/graphics/Rect;)[Landroid/media/ImageReader$ImagePlane;
    .registers 18

    move-object/from16 v0, p8

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v8}, Landroid/media/ImageReader;->nativeCreateImagePlanes(ILandroid/graphics/GraphicBuffer;IIIIII)[Landroid/media/ImageReader$ImagePlane;

    move-result-object v1

    return-object v1
.end method

.method private initializeImageReader(IIIIJIIZ)V
    .registers 25

    move-object v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    const/4 v12, 0x1

    if-lt v10, v12, :cond_5a

    if-lt v11, v12, :cond_5a

    move/from16 v13, p4

    if-lt v13, v12, :cond_50

    const/16 v0, 0x11

    move/from16 v14, p3

    if-eq v14, v0, :cond_48

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroid/media/ImageReader;->nativeInit(Ljava/lang/Object;IIIJII)V

    iput-boolean v12, v9, Landroid/media/ImageReader;->mIsReaderValid:Z

    invoke-direct {p0}, Landroid/media/ImageReader;->nativeGetSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v9, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    nop

    if-eqz p9, :cond_36

    move v0, v14

    goto :goto_38

    :cond_36
    move/from16 v0, p7

    :goto_38
    invoke-static {v10, v11, v0, v12}, Landroid/media/ImageUtils;->getEstimatedNativeAllocBytes(IIII)I

    move-result v0

    iput v0, v9, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, v9, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    return-void

    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NV21 format is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    move/from16 v14, p3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum outstanding image count must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    move/from16 v14, p3

    move/from16 v13, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The image dimensions must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isImageOwnedbyMe(Landroid/media/Image;)Z
    .registers 5

    instance-of v0, p1, Landroid/media/ImageReader$SurfaceImage;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    move-result-object v2

    if-ne v2, p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native nativeClose()V
.end method

.method private static synchronized native nativeCreateImagePlanes(ILandroid/graphics/GraphicBuffer;IIIIII)[Landroid/media/ImageReader$ImagePlane;
.end method

.method private synchronized native nativeDetachImage(Landroid/media/Image;)I
.end method

.method private synchronized native nativeDiscardFreeBuffers()V
.end method

.method private synchronized native nativeGetSurface()Landroid/view/Surface;
.end method

.method private synchronized native nativeImageSetup(Landroid/media/Image;Z)I
.end method

.method private synchronized native nativeInit(Ljava/lang/Object;IIIJII)V
.end method

.method private synchronized native nativeReleaseImage(Landroid/media/Image;)V
.end method

.method private synchronized native nativeSetName(Ljava/lang/String;)V
.end method

.method private static synchronized native nativeUnlockGraphicBuffer(Landroid/graphics/GraphicBuffer;)V
.end method

.method public static newInstance(IIII)Landroid/media/ImageReader;
    .registers 13

    new-instance v8, Landroid/media/ImageReader;

    const/16 v0, 0x22

    if-ne p2, v0, :cond_9

    const-wide/16 v0, 0x0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x3

    :goto_b
    move-wide v5, v0

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v7}, Landroid/media/ImageReader;-><init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V

    return-object v8
.end method

.method public static newInstance(IIIIJ)Landroid/media/ImageReader;
    .registers 15

    new-instance v8, Landroid/media/ImageReader;

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v7}, Landroid/media/ImageReader;-><init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V

    return-object v8
.end method

.method public static newInstance(IIIILandroid/hardware/camera2/MultiResolutionImageReader;)Landroid/media/ImageReader;
    .registers 14

    new-instance v8, Landroid/media/ImageReader;

    const/16 v0, 0x22

    if-ne p2, v0, :cond_9

    const-wide/16 v0, 0x0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x3

    :goto_b
    move-wide v5, v0

    move-object v0, v8

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/media/ImageReader;-><init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V

    return-object v8
.end method

.method private static postEventFromNative(Ljava/lang/Object;)V
    .registers 7

    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    if-nez v1, :cond_c

    return-void

    :cond_c
    iget-object v2, v1, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_f
    iget-object v3, v1, Landroid/media/ImageReader;->mListenerExecutor:Ljava/util/concurrent/Executor;

    iget-object v4, v1, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_2c

    iget-object v5, v1, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_17
    iget-boolean v2, v1, Landroid/media/ImageReader;->mIsReaderValid:Z

    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_29

    if-eqz v3, :cond_28

    if-eqz v4, :cond_28

    if-eqz v2, :cond_28

    new-instance v5, Landroid/media/ImageReader$1;

    invoke-direct {v5, v4, v1}, Landroid/media/ImageReader$1;-><init>(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/media/ImageReader;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_28
    return-void

    :catchall_29
    move-exception v2

    :try_start_2a
    monitor-exit v5
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v2

    :catchall_2c
    move-exception v3

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v3
.end method

.method private releaseImage(Landroid/media/Image;)V
    .registers 5

    instance-of v0, p1, Landroid/media/ImageReader$SurfaceImage;

    if-eqz v0, :cond_31

    move-object v0, p1

    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    iget-boolean v1, v0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-nez v1, :cond_c

    return-void

    :cond_c
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    move-result-object v1

    if-ne v1, p0, :cond_29

    iget-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->-$$Nest$mclearSurfacePlanes(Landroid/media/ImageReader$SurfaceImage;)V

    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeReleaseImage(Landroid/media/Image;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    iget-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This image was not produced by this ImageReader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This image was not produced by an ImageReader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unlockGraphicBuffer(Landroid/graphics/GraphicBuffer;)V
    .registers 1

    invoke-static {p0}, Landroid/media/ImageReader;->nativeUnlockGraphicBuffer(Landroid/graphics/GraphicBuffer;)V

    return-void
.end method


# virtual methods
.method public acquireLatestImage()Landroid/media/Image;
    .registers 5

    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    :goto_8
    :try_start_8
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImageNoThrowISE()Landroid/media/Image;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_23

    if-nez v1, :cond_1e

    move-object v2, v0

    const/4 v0, 0x0

    nop

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    :cond_16
    iget-object v3, p0, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    if-eqz v3, :cond_1d

    invoke-virtual {v3, p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->flushOther(Landroid/media/ImageReader;)V

    :cond_1d
    return-object v2

    :cond_1e
    :try_start_1e
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_23

    move-object v0, v1

    goto :goto_8

    :catchall_23
    move-exception v1

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    :cond_29
    iget-object v2, p0, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    if-eqz v2, :cond_30

    invoke-virtual {v2, p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->flushOther(Landroid/media/ImageReader;)V

    :cond_30
    throw v1
.end method

.method public acquireNextImage()Landroid/media/Image;
    .registers 7

    iget-boolean v0, p0, Landroid/media/ImageReader;->mUseLegacyImageFormat:Z

    if-eqz v0, :cond_c

    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-direct {v0, p0, v1}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;I)V

    goto :goto_15

    :cond_c
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    iget v1, p0, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    iget v2, p0, Landroid/media/ImageReader;->mDataSpace:I

    invoke-direct {v0, p0, v1, v2}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;II)V

    :goto_15
    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    move-result v1

    packed-switch v1, :pswitch_data_50

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown nativeImageSetup return code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :pswitch_35  #0x2
    new-instance v2, Ljava/lang/IllegalStateException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroid/media/ImageReader;->mMaxImages:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "maxImages (%d) has already been acquired, call #close before acquiring more."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_4d  #0x1
    const/4 v2, 0x0

    return-object v2

    :pswitch_4f  #0x0
    return-object v0

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_4f  #00000000
        :pswitch_4d  #00000001
        :pswitch_35  #00000002
    .end packed-switch
.end method

.method public acquireNextImageNoThrowISE()Landroid/media/Image;
    .registers 4

    iget-boolean v0, p0, Landroid/media/ImageReader;->mUseLegacyImageFormat:Z

    if-eqz v0, :cond_c

    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-direct {v0, p0, v1}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;I)V

    goto :goto_15

    :cond_c
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    iget v1, p0, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    iget v2, p0, Landroid/media/ImageReader;->mDataSpace:I

    invoke-direct {v0, p0, v1, v2}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;II)V

    :goto_15
    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    move-result v1

    if-nez v1, :cond_1d

    move-object v1, v0

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    return-object v1
.end method

.method public close()V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_b
    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_f
    iput-boolean v1, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Image;

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    goto :goto_17

    :cond_27
    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Landroid/media/ImageReader;->nativeClose()V

    iget v2, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    if-lez v2, :cond_3e

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget v3, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    iput v1, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    :cond_3e
    monitor-exit v0

    return-void

    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_f .. :try_end_42} :catchall_40

    throw v1
.end method

.method public detachImage(Landroid/media/Image;)V
    .registers 5

    if-eqz p1, :cond_33

    invoke-direct {p0, p1}, Landroid/media/ImageReader;->isImageOwnedbyMe(Landroid/media/Image;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move-object v0, p1

    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->isAttachable()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeDetachImage(Landroid/media/Image;)I

    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->-$$Nest$mclearSurfacePlanes(Landroid/media/ImageReader$SurfaceImage;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/ImageReader$SurfaceImage;->-$$Nest$fputmPlanes(Landroid/media/ImageReader$SurfaceImage;[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/ImageReader$SurfaceImage;->-$$Nest$msetDetached(Landroid/media/ImageReader$SurfaceImage;Z)V

    return-void

    :cond_23
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Image was already detached from this ImageReader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to detach an image that is not owned by this ImageReader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input image must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public discardFreeBuffers()V
    .registers 3

    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeDiscardFreeBuffers()V

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDataSpace()I
    .registers 2

    iget v0, p0, Landroid/media/ImageReader;->mDataSpace:I

    return v0
.end method

.method public getHardwareBufferFormat()I
    .registers 2

    iget v0, p0, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Landroid/media/ImageReader;->mHeight:I

    return v0
.end method

.method public getImageFormat()I
    .registers 2

    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    return v0
.end method

.method public getMaxImages()I
    .registers 2

    iget v0, p0, Landroid/media/ImageReader;->mMaxImages:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getUsage()J
    .registers 3

    iget-wide v0, p0, Landroid/media/ImageReader;->mUsage:J

    return-wide v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Landroid/media/ImageReader;->mWidth:I

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeSetName(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .registers 7

    iget-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_33

    if-eqz p2, :cond_c

    :try_start_7
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_10

    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_10
    if-eqz v1, :cond_2b

    iget-object v2, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Landroid/media/ImageReader$ListenerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v2, v1, :cond_2a

    :cond_1c
    new-instance v2, Landroid/media/ImageReader$ListenerHandler;

    invoke-direct {v2, p0, v1}, Landroid/media/ImageReader$ListenerHandler;-><init>(Landroid/media/ImageReader;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    new-instance v3, Landroid/media/ImageReader$HandlerExecutor;

    invoke-direct {v3, p0, v2}, Landroid/media/ImageReader$HandlerExecutor;-><init>(Landroid/media/ImageReader;Landroid/os/Handler;)V

    iput-object v3, p0, Landroid/media/ImageReader;->mListenerExecutor:Ljava/util/concurrent/Executor;

    :cond_2a
    goto :goto_38

    :cond_2b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "handler is null but the current thread is not a looper"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_33
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    iput-object v1, p0, Landroid/media/ImageReader;->mListenerExecutor:Ljava/util/concurrent/Executor;

    :goto_38
    iput-object p1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    monitor-exit v0

    return-void

    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public setOnImageAvailableListenerWithExecutor(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V
    .registers 5

    if-eqz p2, :cond_e

    iget-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    iput-object p2, p0, Landroid/media/ImageReader;->mListenerExecutor:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v1

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
