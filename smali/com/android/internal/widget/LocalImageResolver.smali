# classes4.dex

.class public Lcom/android/internal/widget/LocalImageResolver;
.super Ljava/lang/Object;


# static fields
.field static final DEFAULT_MAX_SAFE_ICON_SIZE_PX:I = 0x1e0

.field public static final NO_MAX_SIZE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LocalImageResolver"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPowerOfTwoForSampleRatio(D)I
    .registers 4

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private static getResolvableUri(Landroid/graphics/drawable/Icon;)Landroid/net/Uri;
    .registers 3

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_11

    goto :goto_16

    :cond_11
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_16
    :goto_16
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$resolveImage$0(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 4

    const/16 v0, 0x1e0

    invoke-static {p0, p1, v0, v0}, Lcom/android/internal/widget/LocalImageResolver;->onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;II)V

    return-void
.end method

.method static synthetic lambda$resolveImage$1(IILandroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 8

    if-lez p0, :cond_48

    if-gtz p1, :cond_5

    goto :goto_48

    :cond_5
    invoke-virtual {p3}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-gt v1, p0, :cond_16

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-gt v1, p1, :cond_16

    return-void

    :cond_16
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_34

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-le v1, p0, :cond_47

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/2addr v1, p0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    invoke-virtual {p2, p0, v1}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    goto :goto_47

    :cond_34
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-le v1, p1, :cond_47

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    mul-int/2addr v1, p1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    invoke-virtual {p2, v1, p1}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    :cond_47
    :goto_47
    return-void

    :cond_48
    :goto_48
    return-void
.end method

.method private static onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;II)V
    .registers 10

    invoke-virtual {p1}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-le v1, v2, :cond_1e

    int-to-float v3, v1

    const/high16 v4, 0x3f800000  # 1.0f

    mul-float/2addr v3, v4

    int-to-float v4, v2

    div-float/2addr v3, v4

    float-to-double v3, v3

    goto :goto_20

    :cond_1e
    const-wide/high16 v3, 0x3ff0000000000000L  # 1.0

    :goto_20
    nop

    invoke-static {v3, v4}, Lcom/android/internal/widget/LocalImageResolver;->getPowerOfTwoForSampleRatio(D)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    return-void
.end method

.method private static resolveBitmapImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .registers 8

    if-lez p2, :cond_40

    if-lez p3, :cond_40

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x0

    return-object v1

    :cond_c
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, p2, :cond_18

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v1, p3, :cond_40

    :cond_18
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_24

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    goto :goto_28

    :cond_24
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    :goto_28
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Icon;->setTintBlendMode(Landroid/graphics/BlendMode;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    :cond_40
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static resolveImage(ILandroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/res/Resources;I)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/graphics/ImageDecoder$Source;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private static resolveImage(Landroid/graphics/ImageDecoder$Source;II)Landroid/graphics/drawable/Drawable;
    .registers 6

    :try_start_0
    new-instance v0, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-static {p0, v0}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    const-string v1, "LocalImageResolver"

    const-string v2, "Couldn\'t use ImageDecoder for drawable, falling back to non-resized load."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static resolveImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1e0

    invoke-static {p0, p1, v0, v0}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static resolveImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    :pswitch_b  #0x3
    goto :goto_32

    :pswitch_c  #0x4, 0x6
    invoke-static {p0}, Lcom/android/internal/widget/LocalImageResolver;->getResolvableUri(Landroid/graphics/drawable/Icon;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-static {v1, p1, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-static {p0, v2}, Lcom/android/internal/widget/LocalImageResolver;->tintDrawable(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1d
    goto :goto_32

    :pswitch_1e  #0x2
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    invoke-static {v1, p1, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(ILandroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-static {p0, v1}, Lcom/android/internal/widget/LocalImageResolver;->tintDrawable(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :pswitch_2d  #0x1, 0x5
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->resolveBitmapImage(Landroid/graphics/drawable/Icon;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_32
    :goto_32
    :try_start_32
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_36
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_32 .. :try_end_36} :catch_37

    return-object v0

    :catch_37
    move-exception v1

    return-object v0

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_2d  #00000001
        :pswitch_1e  #00000002
        :pswitch_b  #00000003
        :pswitch_c  #00000004
        :pswitch_2d  #00000005
        :pswitch_c  #00000006
    .end packed-switch
.end method

.method public static resolveImage(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    nop

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/widget/LocalImageResolver$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_13

    return-object v1

    :catch_13
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static resolveImage(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .registers 6

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/internal/widget/LocalImageResolver;->resolveImage(Landroid/graphics/ImageDecoder$Source;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private static tintDrawable(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->hasTint()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    :cond_1b
    return-object p1
.end method
