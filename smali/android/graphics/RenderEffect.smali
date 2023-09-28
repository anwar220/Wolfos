# classes.dex

.class public final Landroid/graphics/RenderEffect;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/RenderEffect$RenderEffectHolder;
    }
.end annotation


# instance fields
.field private final mNativeRenderEffect:J


# direct methods
.method static bridge synthetic -$$Nest$smnativeGetFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/RenderEffect;->nativeGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/graphics/RenderEffect;->mNativeRenderEffect:J

    sget-object v0, Landroid/graphics/RenderEffect$RenderEffectHolder;->RENDER_EFFECT_REGISTRY:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-void
.end method

.method public static createBitmapEffect(Landroid/graphics/Bitmap;)Landroid/graphics/RenderEffect;
    .registers 14

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v11, v1

    new-instance v12, Landroid/graphics/RenderEffect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, v0

    move v6, v11

    move v9, v0

    move v10, v11

    invoke-static/range {v1 .. v10}, Landroid/graphics/RenderEffect;->nativeCreateBitmapEffect(JFFFFFFFF)J

    move-result-wide v1

    invoke-direct {v12, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    return-object v12
.end method

.method public static createBitmapEffect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/RenderEffect;
    .registers 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v12

    const/4 v2, 0x0

    if-nez v0, :cond_d

    move v3, v2

    goto :goto_f

    :cond_d
    iget v3, v0, Landroid/graphics/Rect;->left:I

    :goto_f
    move v14, v3

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    iget v2, v0, Landroid/graphics/Rect;->top:I

    :goto_15
    move v15, v2

    if-nez v0, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_1f

    :cond_1d
    iget v2, v0, Landroid/graphics/Rect;->right:I

    :goto_1f
    move v11, v2

    if-nez v0, :cond_27

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_29

    :cond_27
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    :goto_29
    move v10, v2

    new-instance v9, Landroid/graphics/RenderEffect;

    int-to-float v4, v14

    int-to-float v5, v15

    int-to-float v6, v11

    int-to-float v7, v10

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    move/from16 v16, v2

    move/from16 v17, v3

    move-wide v2, v12

    move-object v1, v9

    move/from16 v9, v16

    move/from16 v16, v10

    move/from16 v10, v17

    move/from16 v17, v11

    move v11, v0

    invoke-static/range {v2 .. v11}, Landroid/graphics/RenderEffect;->nativeCreateBitmapEffect(JFFFFFFFF)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/RenderEffect;-><init>(J)V

    return-object v1
.end method

.method public static createBlendModeEffect(Landroid/graphics/RenderEffect;Landroid/graphics/RenderEffect;Landroid/graphics/BlendMode;)Landroid/graphics/RenderEffect;
    .registers 9

    new-instance v0, Landroid/graphics/RenderEffect;

    invoke-virtual {p0}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Xfermode;->porterDuffMode:I

    invoke-static {v1, v2, v3, v4, v5}, Landroid/graphics/RenderEffect;->nativeCreateBlendModeEffect(JJI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    return-object v0
.end method

.method public static createBlurEffect(FFLandroid/graphics/RenderEffect;Landroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;
    .registers 9

    if-eqz p2, :cond_5

    iget-wide v0, p2, Landroid/graphics/RenderEffect;->mNativeRenderEffect:J

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x0

    :goto_7
    new-instance v2, Landroid/graphics/RenderEffect;

    iget v3, p3, Landroid/graphics/Shader$TileMode;->nativeInt:I

    invoke-static {p0, p1, v0, v1, v3}, Landroid/graphics/RenderEffect;->nativeCreateBlurEffect(FFJI)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Landroid/graphics/RenderEffect;-><init>(J)V

    return-object v2
.end method

.method public static createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;
    .registers 7

    new-instance v0, Landroid/graphics/RenderEffect;

    iget v1, p2, Landroid/graphics/Shader$TileMode;->nativeInt:I

    const-wide/16 v2, 0x0

    invoke-static {p0, p1, v2, v3, v1}, Landroid/graphics/RenderEffect;->nativeCreateBlurEffect(FFJI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    return-object v0
.end method

.method public static createChainEffect(Landroid/graphics/RenderEffect;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .registers 7

    new-instance v0, Landroid/graphics/RenderEffect;

    invoke-virtual {p0}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/RenderEffect;->nativeCreateChainEffect(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    return-object v0
.end method

.method public static createColorFilterEffect(Landroid/graphics/ColorFilter;)Landroid/graphics/RenderEffect;
    .registers 6

    new-instance v0, Landroid/graphics/RenderEffect;

    invoke-virtual {p0}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/RenderEffect;->nativeCreateColorFilterEffect(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    return-object v0
.end method

.method public static createColorFilterEffect(Landroid/graphics/ColorFilter;Landroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .registers 7

    new-instance v0, Landroid/graphics/RenderEffect;

    invoke-virtual {p0}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/RenderEffect;->nativeCreateColorFilterEffect(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    return-object v0
.end method

.method public static createOffsetEffect(FF)Landroid/graphics/RenderEffect;
    .registers 5

    new-instance v0, Landroid/graphics/RenderEffect;

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Landroid/graphics/RenderEffect;->nativeCreateOffsetEffect(FFJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    return-object v0
.end method

.method public static createOffsetEffect(FFLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;
    .registers 6

    new-instance v0, Landroid/graphics/RenderEffect;

    invoke-virtual {p2}, Landroid/graphics/RenderEffect;->getNativeInstance()J

    move-result-wide v1

    invoke-static {p0, p1, v1, v2}, Landroid/graphics/RenderEffect;->nativeCreateOffsetEffect(FFJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    return-object v0
.end method

.method public static createRuntimeShaderEffect(Landroid/graphics/RuntimeShader;Ljava/lang/String;)Landroid/graphics/RenderEffect;
    .registers 5

    new-instance v0, Landroid/graphics/RenderEffect;

    invoke-virtual {p0}, Landroid/graphics/RuntimeShader;->getNativeShaderBuilder()J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Landroid/graphics/RenderEffect;->nativeCreateRuntimeShaderEffect(JLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    return-object v0
.end method

.method public static createShaderEffect(Landroid/graphics/Shader;)Landroid/graphics/RenderEffect;
    .registers 4

    new-instance v0, Landroid/graphics/RenderEffect;

    invoke-virtual {p0}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/graphics/RenderEffect;->nativeCreateShaderEffect(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/RenderEffect;-><init>(J)V

    return-object v0
.end method

.method private static native nativeCreateBitmapEffect(JFFFFFFFF)J
.end method

.method private static native nativeCreateBlendModeEffect(JJI)J
.end method

.method private static native nativeCreateBlurEffect(FFJI)J
.end method

.method private static native nativeCreateChainEffect(JJ)J
.end method

.method private static native nativeCreateColorFilterEffect(JJ)J
.end method

.method private static native nativeCreateOffsetEffect(FFJ)J
.end method

.method private static native nativeCreateRuntimeShaderEffect(JLjava/lang/String;)J
.end method

.method private static native nativeCreateShaderEffect(J)J
.end method

.method private static native nativeGetFinalizer()J
.end method


# virtual methods
.method getNativeInstance()J
    .registers 3

    iget-wide v0, p0, Landroid/graphics/RenderEffect;->mNativeRenderEffect:J

    return-wide v0
.end method
