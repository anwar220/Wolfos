# classes.dex

.class public Landroid/graphics/RuntimeShader;
.super Landroid/graphics/Shader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/RuntimeShader$NoImagePreloadHolder;
    }
.end annotation


# instance fields
.field private mNativeInstanceRuntimeShaderBuilder:J


# direct methods
.method static bridge synthetic -$$Nest$smnativeGetFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/RuntimeShader;->nativeGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/Shader;-><init>(Landroid/graphics/ColorSpace;)V

    if-eqz p1, :cond_19

    invoke-static {p1}, Landroid/graphics/RuntimeShader;->nativeCreateBuilder(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/RuntimeShader;->mNativeInstanceRuntimeShaderBuilder:J

    sget-object v0, Landroid/graphics/RuntimeShader$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/RuntimeShader;->mNativeInstanceRuntimeShaderBuilder:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-void

    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "RuntimeShader requires a non-null AGSL string"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeCreateBuilder(Ljava/lang/String;)J
.end method

.method private static native nativeCreateShader(JJ)J
.end method

.method private static native nativeGetFinalizer()J
.end method

.method private static native nativeUpdateShader(JLjava/lang/String;J)V
.end method

.method private static native nativeUpdateUniforms(JLjava/lang/String;FFFFI)V
.end method

.method private static native nativeUpdateUniforms(JLjava/lang/String;IIIII)V
.end method

.method private static native nativeUpdateUniforms(JLjava/lang/String;[FZ)V
.end method

.method private static native nativeUpdateUniforms(JLjava/lang/String;[I)V
.end method

.method private setFloatUniform(Ljava/lang/String;FFFFI)V
    .registers 15

    if-eqz p1, :cond_11

    iget-wide v0, p0, Landroid/graphics/RuntimeShader;->mNativeInstanceRuntimeShaderBuilder:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/RuntimeShader;->nativeUpdateUniforms(JLjava/lang/String;FFFFI)V

    invoke-virtual {p0}, Landroid/graphics/RuntimeShader;->discardNativeInstance()V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The uniformName parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setIntUniform(Ljava/lang/String;IIIII)V
    .registers 15

    if-eqz p1, :cond_11

    iget-wide v0, p0, Landroid/graphics/RuntimeShader;->mNativeInstanceRuntimeShaderBuilder:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/RuntimeShader;->nativeUpdateUniforms(JLjava/lang/String;IIIII)V

    invoke-virtual {p0}, Landroid/graphics/RuntimeShader;->discardNativeInstance()V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The uniformName parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setUniform(Ljava/lang/String;[FZ)V
    .registers 6

    if-eqz p1, :cond_15

    if-eqz p2, :cond_d

    iget-wide v0, p0, Landroid/graphics/RuntimeShader;->mNativeInstanceRuntimeShaderBuilder:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/RuntimeShader;->nativeUpdateUniforms(JLjava/lang/String;[FZ)V

    invoke-virtual {p0}, Landroid/graphics/RuntimeShader;->discardNativeInstance()V

    return-void

    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The uniform values parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The uniformName parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected createNativeInstance(JZ)J
    .registers 6

    iget-wide v0, p0, Landroid/graphics/RuntimeShader;->mNativeInstanceRuntimeShaderBuilder:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/RuntimeShader;->nativeCreateShader(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getNativeShaderBuilder()J
    .registers 3

    iget-wide v0, p0, Landroid/graphics/RuntimeShader;->mNativeInstanceRuntimeShaderBuilder:J

    return-wide v0
.end method

.method public setColorUniform(Ljava/lang/String;I)V
    .registers 5

    invoke-static {p2}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/graphics/RuntimeShader;->setUniform(Ljava/lang/String;[FZ)V

    return-void
.end method

.method public setColorUniform(Ljava/lang/String;J)V
    .registers 7

    invoke-static {p2, p3}, Landroid/graphics/Color;->valueOf(J)Landroid/graphics/Color;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Color;->convert(Landroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Landroid/graphics/RuntimeShader;->setUniform(Ljava/lang/String;[FZ)V

    return-void
.end method

.method public setColorUniform(Ljava/lang/String;Landroid/graphics/Color;)V
    .registers 6

    if-eqz p2, :cond_15

    sget-object v0, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Color;->convert(Landroid/graphics/ColorSpace;)Landroid/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Color;->getComponents()[F

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Landroid/graphics/RuntimeShader;->setUniform(Ljava/lang/String;[FZ)V

    return-void

    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The color parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFloatUniform(Ljava/lang/String;F)V
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFFFI)V

    return-void
.end method

.method public setFloatUniform(Ljava/lang/String;FF)V
    .registers 11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFFFI)V

    return-void
.end method

.method public setFloatUniform(Ljava/lang/String;FFF)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFFFI)V

    return-void
.end method

.method public setFloatUniform(Ljava/lang/String;FFFF)V
    .registers 13

    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFFFI)V

    return-void
.end method

.method public setFloatUniform(Ljava/lang/String;[F)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/RuntimeShader;->setUniform(Ljava/lang/String;[FZ)V

    return-void
.end method

.method public setInputBuffer(Ljava/lang/String;Landroid/graphics/BitmapShader;)V
    .registers 7

    if-eqz p1, :cond_19

    if-eqz p2, :cond_11

    iget-wide v0, p0, Landroid/graphics/RuntimeShader;->mNativeInstanceRuntimeShaderBuilder:J

    invoke-virtual {p2}, Landroid/graphics/BitmapShader;->getNativeInstanceWithDirectSampling()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Landroid/graphics/RuntimeShader;->nativeUpdateShader(JLjava/lang/String;J)V

    invoke-virtual {p0}, Landroid/graphics/RuntimeShader;->discardNativeInstance()V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The shader parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The shaderName parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInputShader(Ljava/lang/String;Landroid/graphics/Shader;)V
    .registers 7

    if-eqz p1, :cond_19

    if-eqz p2, :cond_11

    iget-wide v0, p0, Landroid/graphics/RuntimeShader;->mNativeInstanceRuntimeShaderBuilder:J

    invoke-virtual {p2}, Landroid/graphics/Shader;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, p1, v2, v3}, Landroid/graphics/RuntimeShader;->nativeUpdateShader(JLjava/lang/String;J)V

    invoke-virtual {p0}, Landroid/graphics/RuntimeShader;->discardNativeInstance()V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The shader parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The shaderName parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIntUniform(Ljava/lang/String;I)V
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;IIIII)V

    return-void
.end method

.method public setIntUniform(Ljava/lang/String;II)V
    .registers 11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;IIIII)V

    return-void
.end method

.method public setIntUniform(Ljava/lang/String;III)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;IIIII)V

    return-void
.end method

.method public setIntUniform(Ljava/lang/String;IIII)V
    .registers 13

    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;IIIII)V

    return-void
.end method

.method public setIntUniform(Ljava/lang/String;[I)V
    .registers 5

    if-eqz p1, :cond_15

    if-eqz p2, :cond_d

    iget-wide v0, p0, Landroid/graphics/RuntimeShader;->mNativeInstanceRuntimeShaderBuilder:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/RuntimeShader;->nativeUpdateUniforms(JLjava/lang/String;[I)V

    invoke-virtual {p0}, Landroid/graphics/RuntimeShader;->discardNativeInstance()V

    return-void

    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The uniform values parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The uniformName parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
