# classes2.dex

.class Landroid/media/ImageUtils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static directByteBufferCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V
    .registers 11

    int-to-long v4, p4

    move-object v0, p2

    move v1, p3

    move-object v2, p0

    move v3, p1

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    return-void
.end method

.method private static getEffectivePlaneSizeForImage(Landroid/media/Image;I)Landroid/util/Size;
    .registers 6

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_78

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Invalid image format %d"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_21
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :sswitch_27
    if-nez p1, :cond_37

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_37
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :sswitch_49
    if-nez p1, :cond_59

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_59
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :sswitch_69
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    nop

    :sswitch_data_78
    .sparse-switch
        0x1 -> :sswitch_69
        0x2 -> :sswitch_69
        0x3 -> :sswitch_69
        0x4 -> :sswitch_69
        0x10 -> :sswitch_49
        0x11 -> :sswitch_27
        0x14 -> :sswitch_69
        0x20 -> :sswitch_69
        0x22 -> :sswitch_21
        0x23 -> :sswitch_27
        0x25 -> :sswitch_69
        0x26 -> :sswitch_69
        0x36 -> :sswitch_27
        0x100 -> :sswitch_69
        0x1002 -> :sswitch_69
        0x1003 -> :sswitch_69
        0x20203859 -> :sswitch_69
        0x20363159 -> :sswitch_69
        0x32315659 -> :sswitch_27
        0x48454946 -> :sswitch_69
    .end sparse-switch
.end method

.method public static getEstimatedNativeAllocBytes(IIII)I
    .registers 10

    sparse-switch p2, :sswitch_data_3a

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Invalid format specified %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_19
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    goto :goto_31

    :sswitch_1c
    const-wide v0, 0x3fd3333333333333L  # 0.3

    goto :goto_31

    :sswitch_22
    const-wide/high16 v0, 0x3ff4000000000000L  # 1.25

    goto :goto_31

    :sswitch_25
    const-wide/high16 v0, 0x3ff8000000000000L  # 1.5

    goto :goto_31

    :sswitch_28
    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    goto :goto_31

    :sswitch_2b
    const-wide/high16 v0, 0x4008000000000000L  # 3.0

    goto :goto_31

    :sswitch_2e
    const-wide/high16 v0, 0x4010000000000000L  # 4.0

    nop

    :goto_31
    mul-int v2, p0, p1

    int-to-double v2, v2

    mul-double/2addr v2, v0

    int-to-double v4, p3

    mul-double/2addr v2, v4

    double-to-int v2, v2

    return v2

    nop

    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_2e
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_2b
        0x4 -> :sswitch_28
        0x10 -> :sswitch_28
        0x11 -> :sswitch_25
        0x14 -> :sswitch_28
        0x20 -> :sswitch_28
        0x22 -> :sswitch_25
        0x23 -> :sswitch_25
        0x24 -> :sswitch_28
        0x25 -> :sswitch_22
        0x26 -> :sswitch_25
        0x36 -> :sswitch_28
        0x100 -> :sswitch_1c
        0x101 -> :sswitch_1c
        0x1002 -> :sswitch_28
        0x1003 -> :sswitch_22
        0x20203859 -> :sswitch_19
        0x20363159 -> :sswitch_28
        0x32315659 -> :sswitch_25
        0x44363159 -> :sswitch_28
        0x48454946 -> :sswitch_1c
        0x69656963 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static getNumPlanesForFormat(I)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p0, :sswitch_data_20

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v0, "Invalid format specified %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_19
    return v0

    :sswitch_1a
    const/4 v0, 0x3

    return v0

    :sswitch_1c
    const/4 v0, 0x2

    return v0

    :sswitch_1e
    return v1

    nop

    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_1e
        0x4 -> :sswitch_1e
        0x10 -> :sswitch_1c
        0x11 -> :sswitch_1a
        0x14 -> :sswitch_1e
        0x20 -> :sswitch_1e
        0x22 -> :sswitch_19
        0x23 -> :sswitch_1a
        0x24 -> :sswitch_1e
        0x25 -> :sswitch_1e
        0x26 -> :sswitch_1e
        0x36 -> :sswitch_1a
        0x100 -> :sswitch_1e
        0x101 -> :sswitch_1e
        0x1002 -> :sswitch_1e
        0x1003 -> :sswitch_1e
        0x20203859 -> :sswitch_1e
        0x20363159 -> :sswitch_1e
        0x32315659 -> :sswitch_1a
        0x44363159 -> :sswitch_1e
        0x48454946 -> :sswitch_1e
        0x69656963 -> :sswitch_1e
    .end sparse-switch
.end method

.method public static getNumPlanesForHardwareBufferFormat(I)I
    .registers 5

    const/4 v0, 0x1

    sparse-switch p0, :sswitch_data_1c

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "Invalid hardwareBuffer format specified %d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_19
    const/4 v0, 0x3

    return v0

    :sswitch_1b
    return v0

    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_1b
        0x2 -> :sswitch_1b
        0x3 -> :sswitch_1b
        0x4 -> :sswitch_1b
        0x16 -> :sswitch_1b
        0x21 -> :sswitch_1b
        0x23 -> :sswitch_19
        0x2b -> :sswitch_1b
        0x30 -> :sswitch_1b
        0x31 -> :sswitch_1b
        0x32 -> :sswitch_1b
        0x33 -> :sswitch_1b
        0x34 -> :sswitch_1b
        0x35 -> :sswitch_1b
    .end sparse-switch
.end method

.method public static imageCopy(Landroid/media/Image;Landroid/media/Image;)V
    .registers 18

    move-object/from16 v0, p0

    if-eqz v0, :cond_17d

    if-eqz p1, :cond_17d

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v2

    if-ne v1, v2, :cond_175

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_16d

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v1

    if-eq v1, v2, :cond_16d

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x24

    if-eq v1, v2, :cond_165

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x1002

    if-eq v1, v2, :cond_15d

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v1

    const/16 v2, 0x1003

    if-eq v1, v2, :cond_155

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/media/ImageWriter;

    if-eqz v1, :cond_14d

    new-instance v1, Landroid/util/Size;

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    new-instance v2, Landroid/util/Size;

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12a

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_69
    array-length v8, v3

    if-ge v7, v8, :cond_129

    aget-object v8, v3, v7

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    aget-object v9, v4, v7

    invoke-virtual {v9}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    aget-object v10, v3, v7

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    aget-object v10, v4, v7

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v10

    if-eqz v10, :cond_121

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v10

    if-eqz v10, :cond_121

    aget-object v10, v3, v7

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v10

    aget-object v11, v4, v7

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v11

    if-ne v10, v11, :cond_f2

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    if-ne v8, v9, :cond_ae

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_e6

    :cond_ae
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    invoke-static {v0, v7}, Landroid/media/ImageUtils;->getEffectivePlaneSizeForImage(Landroid/media/Image;I)Landroid/util/Size;

    move-result-object v13

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v14

    aget-object v15, v3, v7

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v15

    mul-int/2addr v14, v15

    const/4 v15, 0x0

    :goto_c6
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-ge v15, v0, :cond_e6

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v15, v0, :cond_dc

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    sub-int/2addr v0, v11

    if-le v14, v0, :cond_dc

    move v14, v0

    :cond_dc
    invoke-static {v5, v11, v6, v12, v14}, Landroid/media/ImageUtils;->directByteBufferCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    add-int/2addr v11, v8

    add-int/2addr v12, v9

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_c6

    :cond_e6
    :goto_e6
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_69

    :cond_f2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Source plane image pixel stride "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v7

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " must be same as destination image pixel stride "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v4, v7

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v10, "Source and destination ByteBuffers must be direct byteBuffer!"

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_129
    return-void

    :cond_12a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "source image size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is different with destination image size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Destination image is not from ImageWriter. Only the images from ImageWriter are writable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Copy of RAW_DEPTH10 format has not been implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Copy of RAW_DEPTH format has not been implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Copy of RAW_OPAQUE format has not been implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PRIVATE format images are not copyable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Src and dst images should have the same format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Images should be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
