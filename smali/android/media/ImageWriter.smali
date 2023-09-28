# classes2.dex

.class public Landroid/media/ImageWriter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageWriter$WriterSurfaceImage;,
        Landroid/media/ImageWriter$Builder;,
        Landroid/media/ImageWriter$ListenerHandler;,
        Landroid/media/ImageWriter$OnImageReleasedListener;
    }
.end annotation


# static fields
.field public static final USAGE_CAMERA_INPUT:J = 0x40000L

.field public static final USAGE_CAMERA_OUTPUT:J = 0x20000L


# instance fields
.field private mDataSpace:I

.field private mDequeuedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mEstimatedNativeAllocBytes:I

.field private mHardwareBufferFormat:I

.field private mHeight:I

.field private mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

.field private mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

.field private final mListenerLock:Ljava/lang/Object;

.field private final mMaxImages:I

.field private mNativeContext:J

.field private mUsage:J

.field private mWidth:I

.field private mWriterFormat:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDataSpace(Landroid/media/ImageWriter;)I
    .registers 1

    iget p0, p0, Landroid/media/ImageWriter;->mDataSpace:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHeight(Landroid/media/ImageWriter;)I
    .registers 1

    iget p0, p0, Landroid/media/ImageWriter;->mHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Landroid/media/ImageWriter;)Landroid/media/ImageWriter$OnImageReleasedListener;
    .registers 1

    iget-object p0, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListenerLock(Landroid/media/ImageWriter;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWidth(Landroid/media/ImageWriter;)I
    .registers 1

    iget p0, p0, Landroid/media/ImageWriter;->mWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mabortImage(Landroid/media/ImageWriter;Landroid/media/Image;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/ImageWriter;->abortImage(Landroid/media/Image;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/ImageWriter;->nativeClassInit()V

    return-void
.end method

.method private constructor <init>(Landroid/view/Surface;IZIII)V
    .registers 21

    move-object v12, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v12, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    const-wide/16 v0, 0x30

    iput-wide v0, v12, Landroid/media/ImageWriter;->mUsage:J

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v12, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    move/from16 v13, p2

    iput v13, v12, Landroid/media/ImageWriter;->mMaxImages:I

    invoke-static/range {p4 .. p4}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v0

    iput v0, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    invoke-static/range {p4 .. p4}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v7

    iput v7, v12, Landroid/media/ImageWriter;->mDataSpace:I

    iget v6, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    iget-wide v10, v12, Landroid/media/ImageWriter;->mUsage:J

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v11}, Landroid/media/ImageWriter;->initializeImageWriter(Landroid/view/Surface;IZZIIIIIJ)V

    return-void
.end method

.method private constructor <init>(Landroid/view/Surface;IZIIIIJ)V
    .registers 27

    move-object/from16 v12, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v12, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    const-wide/16 v0, 0x30

    iput-wide v0, v12, Landroid/media/ImageWriter;->mUsage:J

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v12, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    move/from16 v13, p2

    iput v13, v12, Landroid/media/ImageWriter;->mMaxImages:I

    move-wide/from16 v14, p8

    iput-wide v14, v12, Landroid/media/ImageWriter;->mUsage:J

    if-eqz p3, :cond_35

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v1

    iput v1, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    invoke-static {v0}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v1

    iput v1, v12, Landroid/media/ImageWriter;->mDataSpace:I

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v16, v0

    goto :goto_43

    :cond_35
    invoke-static/range {p4 .. p5}, Landroid/media/PublicFormatUtils;->getPublicFormat(II)I

    move-result v0

    move/from16 v10, p4

    iput v10, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    move/from16 v11, p5

    iput v11, v12, Landroid/media/ImageWriter;->mDataSpace:I

    move/from16 v16, v0

    :goto_43
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, v16

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Landroid/media/ImageWriter;->initializeImageWriter(Landroid/view/Surface;IZZIIIIIJ)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/Surface;IZIIIIJLandroid/media/ImageWriter-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIIIIJ)V

    return-void
.end method

.method private constructor <init>(Landroid/view/Surface;IZIIIJ)V
    .registers 25

    move-object/from16 v12, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v12, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    const-wide/16 v0, 0x30

    iput-wide v0, v12, Landroid/media/ImageWriter;->mUsage:J

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v12, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    move/from16 v13, p2

    iput v13, v12, Landroid/media/ImageWriter;->mMaxImages:I

    move-wide/from16 v14, p7

    iput-wide v14, v12, Landroid/media/ImageWriter;->mUsage:J

    invoke-static/range {p4 .. p4}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v0

    iput v0, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    invoke-static/range {p4 .. p4}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v7

    iput v7, v12, Landroid/media/ImageWriter;->mDataSpace:I

    iget v6, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    invoke-direct/range {v0 .. v11}, Landroid/media/ImageWriter;->initializeImageWriter(Landroid/view/Surface;IZZIIIIIJ)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/Surface;IZIIIJLandroid/media/ImageWriter-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIIIJ)V

    return-void
.end method

.method private constructor <init>(Landroid/view/Surface;IZIIIZ)V
    .registers 22

    move-object v12, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v12, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    const-wide/16 v0, 0x30

    iput-wide v0, v12, Landroid/media/ImageWriter;->mUsage:J

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v12, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    move/from16 v13, p2

    iput v13, v12, Landroid/media/ImageWriter;->mMaxImages:I

    invoke-static/range {p4 .. p4}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v0

    iput v0, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    invoke-static/range {p4 .. p4}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v7

    iput v7, v12, Landroid/media/ImageWriter;->mDataSpace:I

    if-eqz p7, :cond_46

    const/4 v4, 0x1

    iget v6, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    iget-wide v0, v12, Landroid/media/ImageWriter;->mUsage:J

    const-wide/32 v2, 0x40000

    or-long/2addr v0, v2

    const-wide/32 v2, 0x20000

    or-long v10, v0, v2

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v11}, Landroid/media/ImageWriter;->initializeImageWriter(Landroid/view/Surface;IZZIIIIIJ)V

    goto :goto_5a

    :cond_46
    const/4 v4, 0x1

    iget v6, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    iget-wide v10, v12, Landroid/media/ImageWriter;->mUsage:J

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v11}, Landroid/media/ImageWriter;->initializeImageWriter(Landroid/view/Surface;IZZIIIIIJ)V

    :goto_5a
    return-void
.end method

.method private abortImage(Landroid/media/Image;)V
    .registers 5

    if-eqz p1, :cond_2b

    iget-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    move-object v0, p1

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    iget-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    if-nez v1, :cond_12

    return-void

    :cond_12
    iget-wide v1, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1}, Landroid/media/ImageWriter;->cancelImage(JLandroid/media/Image;)V

    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->-$$Nest$mclearSurfacePlanes(Landroid/media/ImageWriter$WriterSurfaceImage;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    return-void

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "It is illegal to abort some image that is not dequeued yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private attachAndQueueInputImage(Landroid/media/Image;)V
    .registers 20

    move-object/from16 v15, p0

    if-eqz p1, :cond_93

    invoke-direct/range {p0 .. p1}, Landroid/media/ImageWriter;->isImageOwnedByMe(Landroid/media/Image;)Z

    move-result v0

    if-nez v0, :cond_8b

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->isAttachable()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getNativeContext()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4a

    iget-wide v1, v15, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getNativeContext()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getDataSpace()I

    move-result v8

    iget v9, v14, Landroid/graphics/Rect;->left:I

    iget v10, v14, Landroid/graphics/Rect;->top:I

    iget v11, v14, Landroid/graphics/Rect;->right:I

    iget v12, v14, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTransform()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getScalingMode()I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v17, v14

    move/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Landroid/media/ImageWriter;->nativeAttachAndQueueImage(JJIJIIIIIII)I

    goto :goto_82

    :cond_4a
    move-object/from16 v17, v14

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v14

    iget-wide v1, v15, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getDataSpace()I

    move-result v7

    move-object/from16 v13, v17

    iget v8, v13, Landroid/graphics/Rect;->left:I

    iget v9, v13, Landroid/graphics/Rect;->top:I

    iget v10, v13, Landroid/graphics/Rect;->right:I

    iget v11, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTransform()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getScalingMode()I

    move-result v16

    move-object/from16 v0, p0

    move-object v3, v14

    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Landroid/media/ImageWriter;->nativeAttachAndQueueGraphicBuffer(JLandroid/graphics/GraphicBuffer;IJIIIIIII)I

    invoke-virtual {v14}, Landroid/graphics/GraphicBuffer;->destroy()V

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->close()V

    :goto_82
    return-void

    :cond_83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image was not detached from last owner, or image  is not detachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not attach an image that is owned ImageWriter already"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synchronized native cancelImage(JLandroid/media/Image;)V
.end method

.method private initializeImageWriter(Landroid/view/Surface;IZZIIIIIJ)V
    .registers 27

    move-object v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    if-eqz v12, :cond_95

    const/4 v14, 0x1

    if-lt v13, v14, :cond_95

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p10

    invoke-direct/range {v0 .. v10}, Landroid/media/ImageWriter;->nativeInit(Ljava/lang/Object;Landroid/view/Surface;IIIZIIJ)J

    move-result-wide v0

    iput-wide v0, v11, Landroid/media/ImageWriter;->mNativeContext:J

    if-eqz p3, :cond_39

    invoke-static/range {p1 .. p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v0

    invoke-static {v0}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v1

    iput v1, v11, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    invoke-static {v0}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v1

    iput v1, v11, Landroid/media/ImageWriter;->mDataSpace:I

    goto :goto_3b

    :cond_39
    move/from16 v0, p5

    :goto_3b
    const/16 v1, 0x21

    if-ne v0, v1, :cond_60

    invoke-static/range {p1 .. p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v1

    packed-switch v1, :pswitch_data_bc

    :pswitch_46  #0x1001
    const/16 v0, 0x100

    goto :goto_54

    :pswitch_49  #0x1003
    const v0, 0x48454946

    goto :goto_54

    :pswitch_4d  #0x1002
    const v0, 0x69656963

    goto :goto_54

    :pswitch_51  #0x1000
    const/16 v0, 0x101

    nop

    :goto_54
    invoke-static {v0}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v2

    iput v2, v11, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    invoke-static {v0}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v2

    iput v2, v11, Landroid/media/ImageWriter;->mDataSpace:I

    :cond_60
    invoke-static/range {p1 .. p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v1

    const/4 v2, -0x1

    move/from16 v3, p8

    if-ne v3, v2, :cond_6e

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    goto :goto_6f

    :cond_6e
    move v4, v3

    :goto_6f
    iput v4, v11, Landroid/media/ImageWriter;->mWidth:I

    move/from16 v4, p9

    if-ne v4, v2, :cond_7a

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    goto :goto_7b

    :cond_7a
    move v2, v4

    :goto_7b
    iput v2, v11, Landroid/media/ImageWriter;->mHeight:I

    iget v5, v11, Landroid/media/ImageWriter;->mWidth:I

    if-eqz p4, :cond_83

    move v6, v0

    goto :goto_85

    :cond_83
    move/from16 v6, p6

    :goto_85
    invoke-static {v5, v2, v6, v14}, Landroid/media/ImageUtils;->getEstimatedNativeAllocBytes(IIII)I

    move-result v2

    iput v2, v11, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget v5, v11, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v2, v5}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    return-void

    :cond_95
    move/from16 v3, p8

    move/from16 v4, p9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal input argument: surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxImages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_bc
    .packed-switch 0x1000
        :pswitch_51  #00001000
        :pswitch_46  #00001001
        :pswitch_4d  #00001002
        :pswitch_49  #00001003
    .end packed-switch
.end method

.method private isImageOwnedByMe(Landroid/media/Image;)Z
    .registers 6

    instance-of v0, p1, Landroid/media/ImageWriter$WriterSurfaceImage;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    move-result-object v2

    if-eq v2, p0, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is owned by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImageWriter"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_30
    const/4 v1, 0x1

    return v1
.end method

.method private synchronized native nativeAttachAndQueueGraphicBuffer(JLandroid/graphics/GraphicBuffer;IJIIIIIII)I
.end method

.method private synchronized native nativeAttachAndQueueImage(JJIJIIIIIII)I
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native nativeClose(J)V
.end method

.method private synchronized native nativeDequeueInputImage(JLandroid/media/Image;)V
.end method

.method private synchronized native nativeInit(Ljava/lang/Object;Landroid/view/Surface;IIIZIIJ)J
.end method

.method private synchronized native nativeQueueInputImage(JLandroid/media/Image;JIIIIIII)V
.end method

.method public static newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;
    .registers 10

    new-instance v7, Landroid/media/ImageWriter;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIII)V

    return-object v7
.end method

.method public static newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;
    .registers 12

    invoke-static {p2}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p2}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_26

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format is specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    :goto_26
    new-instance v0, Landroid/media/ImageWriter;

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v6, p2

    invoke-direct/range {v2 .. v8}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIII)V

    return-object v0
.end method

.method public static newInstance(Landroid/view/Surface;IIII)Landroid/media/ImageWriter;
    .registers 14

    invoke-static {p2}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p2}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_26

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format is specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    :goto_26
    new-instance v0, Landroid/media/ImageWriter;

    const/4 v5, 0x0

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIII)V

    return-object v0
.end method

.method public static newInstance(Landroid/view/Surface;IZ)Landroid/media/ImageWriter;
    .registers 12

    new-instance v8, Landroid/media/ImageWriter;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIIIZ)V

    return-object v8
.end method

.method private static postEventFromNative(Ljava/lang/Object;)V
    .registers 5

    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageWriter;

    if-nez v1, :cond_c

    return-void

    :cond_c
    iget-object v2, v1, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_f
    iget-object v3, v1, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_19

    if-eqz v3, :cond_18

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_18
    return-void

    :catchall_19
    move-exception v3

    :try_start_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v3
.end method


# virtual methods
.method public close()V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    iget-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    goto :goto_a

    :cond_1a
    iget-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-wide v0, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Landroid/media/ImageWriter;->nativeClose(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/ImageWriter;->mNativeContext:J

    iget v0, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    if-lez v0, :cond_38

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    :cond_38
    return-void
.end method

.method public dequeueInputImage()Landroid/media/Image;
    .registers 4

    iget-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroid/media/ImageWriter;->mMaxImages:I

    if-ge v0, v1, :cond_1d

    new-instance v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-direct {v0, p0}, Landroid/media/ImageWriter$WriterSurfaceImage;-><init>(Landroid/media/ImageWriter;)V

    iget-wide v1, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v1, v2, v0}, Landroid/media/ImageWriter;->nativeDequeueInputImage(JLandroid/media/Image;)V

    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    return-object v0

    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already dequeued max number of Images "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/ImageWriter;->mMaxImages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageWriter;->close()V
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

    iget v0, p0, Landroid/media/ImageWriter;->mDataSpace:I

    return v0
.end method

.method public getFormat()I
    .registers 2

    iget v0, p0, Landroid/media/ImageWriter;->mWriterFormat:I

    return v0
.end method

.method public getHardwareBufferFormat()I
    .registers 2

    iget v0, p0, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Landroid/media/ImageWriter;->mHeight:I

    return v0
.end method

.method public getMaxImages()I
    .registers 2

    iget v0, p0, Landroid/media/ImageWriter;->mMaxImages:I

    return v0
.end method

.method public getUsage()J
    .registers 3

    iget-wide v0, p0, Landroid/media/ImageWriter;->mUsage:J

    return-wide v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Landroid/media/ImageWriter;->mWidth:I

    return v0
.end method

.method public queueInputImage(Landroid/media/Image;)V
    .registers 20

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    if-eqz v14, :cond_80

    invoke-direct/range {p0 .. p1}, Landroid/media/ImageWriter;->isImageOwnedByMe(Landroid/media/Image;)Z

    move-result v15

    if-eqz v15, :cond_1c

    move-object v0, v14

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    iget-boolean v0, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_14

    goto :goto_1c

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image from ImageWriter is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_1c
    if-nez v15, :cond_46

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/media/ImageReader;

    if-eqz v0, :cond_30

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ImageReader;

    invoke-virtual {v0, v14}, Landroid/media/ImageReader;->detachImage(Landroid/media/Image;)V

    goto :goto_36

    :cond_30
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3e

    :goto_36
    nop

    invoke-direct/range {p0 .. p1}, Landroid/media/ImageWriter;->attachAndQueueInputImage(Landroid/media/Image;)V

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->close()V

    return-void

    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only images from ImageReader can be queued to ImageWriter, other image source is not supported yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v12

    iget-wide v1, v13, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getDataSpace()I

    move-result v6

    iget v7, v12, Landroid/graphics/Rect;->left:I

    iget v8, v12, Landroid/graphics/Rect;->top:I

    iget v9, v12, Landroid/graphics/Rect;->right:I

    iget v10, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTransform()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getScalingMode()I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v17, v12

    move/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Landroid/media/ImageWriter;->nativeQueueInputImage(JLandroid/media/Image;JIIIIIII)V

    if-eqz v15, :cond_7f

    iget-object v0, v13, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v0, v14

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-static {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->-$$Nest$mclearSurfacePlanes(Landroid/media/ImageWriter$WriterSurfaceImage;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    :cond_7f
    return-void

    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V
    .registers 7

    iget-object v0, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_2e

    if-eqz p2, :cond_c

    :try_start_7
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_10

    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_10
    if-eqz v1, :cond_26

    iget-object v2, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Landroid/media/ImageWriter$ListenerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v2, v1, :cond_23

    :cond_1c
    new-instance v2, Landroid/media/ImageWriter$ListenerHandler;

    invoke-direct {v2, p0, v1}, Landroid/media/ImageWriter$ListenerHandler;-><init>(Landroid/media/ImageWriter;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    :cond_23
    iput-object p1, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    goto :goto_33

    :cond_26
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "handler is null but the current thread is not a looper"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2e
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    iput-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    :goto_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw v1
.end method
