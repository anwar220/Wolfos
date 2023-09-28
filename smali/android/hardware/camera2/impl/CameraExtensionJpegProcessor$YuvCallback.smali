# classes.dex

.class Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YuvCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 33

    move-object/from16 v1, p0

    const-string v2, "CameraExtensionJpeg"

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_6
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->-$$Nest$fgetmYuvReader(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;)Landroid/media/ImageReader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    move-object v3, v0

    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->-$$Nest$fgetmOutputWriter(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;)Landroid/media/ImageWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_1b} :catch_11b

    move-object v4, v0

    nop

    invoke-virtual {v4}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v4}, Landroid/media/Image;->getWidth()I

    move-result v26

    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    aget-object v27, v0, v5

    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v6, 0x1

    aget-object v28, v0, v6

    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v6, 0x2

    aget-object v29, v0, v6

    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->-$$Nest$fgetmJpegParameters(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v30

    const/4 v0, 0x0

    :goto_4e
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;

    iget-object v7, v6, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mTimeStamps:Ljava/util/HashSet;

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6f

    move-object v0, v6

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->remove()V

    goto :goto_70

    :cond_6f
    goto :goto_4e

    :cond_70
    :goto_70
    if-nez v0, :cond_ab

    iget-object v6, v1, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    invoke-static {v6}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->-$$Nest$fgetmJpegParameters(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_92

    const-string v6, "Empty jpeg settings queue! Using default jpeg orientation and quality!"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;-><init>(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters-IA;)V

    move-object v0, v6

    iput v5, v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mRotation:I

    const/16 v5, 0x64

    iput v5, v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mQuality:I

    move-object v5, v0

    goto :goto_ac

    :cond_92
    const-string v5, "No jpeg settings found with matching timestamp for current processed input!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "Using values from the top of the queue!"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->-$$Nest$fgetmJpegParameters(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;

    move-object v5, v0

    goto :goto_ac

    :cond_ab
    move-object v5, v0

    :goto_ac
    nop

    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v7

    invoke-virtual/range {v27 .. v27}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual/range {v27 .. v27}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v9

    invoke-virtual/range {v27 .. v27}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    invoke-virtual/range {v28 .. v28}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual/range {v28 .. v28}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v12

    invoke-virtual/range {v28 .. v28}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v13

    invoke-virtual/range {v29 .. v29}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual/range {v29 .. v29}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v15

    invoke-virtual/range {v29 .. v29}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    iget v0, v5, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mQuality:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v22

    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v23

    iget v0, v5, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mRotation:I

    move/from16 v24, v0

    move-object/from16 v17, v25

    move/from16 v18, v26

    invoke-static/range {v6 .. v24}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->-$$Nest$smcompressJpegFromYUV420pNative(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIIII)I

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/media/Image;->setTimestamp(J)V

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    :try_start_fe
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->-$$Nest$fgetmOutputWriter(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;)Landroid/media/ImageWriter;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_107
    .catch Ljava/lang/IllegalStateException; {:try_start_fe .. :try_end_107} :catch_10e
    .catchall {:try_start_fe .. :try_end_107} :catchall_10c

    nop

    :goto_108
    invoke-virtual {v4}, Landroid/media/Image;->close()V

    goto :goto_116

    :catchall_10c
    move-exception v0

    goto :goto_117

    :catch_10e
    move-exception v0

    :try_start_10f
    const-string v6, "Failed to queue encoded result!"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_114
    .catchall {:try_start_10f .. :try_end_114} :catchall_10c

    nop

    goto :goto_108

    :goto_116
    return-void

    :goto_117
    invoke-virtual {v4}, Landroid/media/Image;->close()V

    throw v0

    :catch_11b
    move-exception v0

    if-eqz v3, :cond_121

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    :cond_121
    if-eqz v4, :cond_126

    invoke-virtual {v4}, Landroid/media/Image;->close()V

    :cond_126
    const-string v5, "Failed to acquire processed yuv image or jpeg image!"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
