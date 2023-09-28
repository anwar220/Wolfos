# classes.dex

.class public Landroid/filterfw/format/ImageFormat;
.super Ljava/lang/Object;


# static fields
.field public static final COLORSPACE_GRAY:I = 0x1

.field public static final COLORSPACE_KEY:Ljava/lang/String; = "colorspace"

.field public static final COLORSPACE_RGB:I = 0x2

.field public static final COLORSPACE_RGBA:I = 0x3

.field public static final COLORSPACE_YUV:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesPerSampleForColorspace(I)I
    .registers 4

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_2a

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown colorspace id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_23  #0x4
    return v0

    :pswitch_24  #0x3
    const/4 v0, 0x4

    return v0

    :pswitch_26  #0x2
    return v0

    :pswitch_27  #0x1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_27  #00000001
        :pswitch_26  #00000002
        :pswitch_24  #00000003
        :pswitch_23  #00000004
    .end packed-switch
.end method

.method public static create(I)Landroid/filterfw/core/MutableFrameFormat;
    .registers 3

    nop

    invoke-static {p0}, Landroid/filterfw/format/ImageFormat;->bytesPerSampleForColorspace(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0, v1}, Landroid/filterfw/format/ImageFormat;->create(IIIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    return-object v0
.end method

.method public static create(II)Landroid/filterfw/core/MutableFrameFormat;
    .registers 4

    nop

    invoke-static {p0}, Landroid/filterfw/format/ImageFormat;->bytesPerSampleForColorspace(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1, p0, v0, p1}, Landroid/filterfw/format/ImageFormat;->create(IIIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    return-object v0
.end method

.method public static create(IIII)Landroid/filterfw/core/MutableFrameFormat;
    .registers 5

    nop

    invoke-static {p2}, Landroid/filterfw/format/ImageFormat;->bytesPerSampleForColorspace(I)I

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/filterfw/format/ImageFormat;->create(IIIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    return-object v0
.end method

.method public static create(IIIII)Landroid/filterfw/core/MutableFrameFormat;
    .registers 8

    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p4}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    invoke-virtual {v0, p0, p1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    invoke-virtual {v0, p3}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "colorspace"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/MutableFrameFormat;->setMetaValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    if-ne p4, v1, :cond_1d

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setObjectClass(Ljava/lang/Class;)V

    :cond_1d
    return-object v0
.end method