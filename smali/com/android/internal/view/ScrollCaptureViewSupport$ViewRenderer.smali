# classes4.dex

.class final Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/ScrollCaptureViewSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewRenderer"
.end annotation


# static fields
.field private static final AMBIENT_SHADOW_ALPHA:F = 0.039f

.field private static final LIGHT_RADIUS_DP:F = 800.0f

.field private static final LIGHT_Z_DP:F = 400.0f

.field private static final SPOT_SHADOW_ALPHA:F = 0.039f

.field private static final TAG:Ljava/lang/String; = "ViewRenderer"


# instance fields
.field private final mCaptureRenderNode:Landroid/graphics/RenderNode;

.field private mLastRenderedSourceDrawingId:J

.field private final mRenderer:Landroid/graphics/HardwareRenderer;

.field private mSurface:Landroid/view/Surface;

.field private final mTempLocation:[I

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempLocation:[I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mLastRenderedSourceDrawingId:J

    new-instance v0, Landroid/graphics/HardwareRenderer;

    invoke-direct {v0}, Landroid/graphics/HardwareRenderer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    const-string v1, "ScrollCapture"

    invoke-virtual {v0, v1}, Landroid/graphics/HardwareRenderer;->setName(Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/RenderNode;

    const-string v2, "ScrollCaptureRoot"

    invoke-direct {v1, v2}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mCaptureRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, v1}, Landroid/graphics/HardwareRenderer;->setContentRoot(Landroid/graphics/RenderNode;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/HardwareRenderer;->setOpaque(Z)V

    return-void
.end method

.method private setupLighting(Landroid/view/View;)V
    .registers 10

    invoke-virtual {p1}, Landroid/view/View;->getUniqueDrawingId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mLastRenderedSourceDrawingId:J

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempLocation:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v3, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x43c80000  # 400.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x44480000  # 800.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    int-to-float v6, v3

    int-to-float v7, v4

    invoke-virtual {v5, v1, v2, v6, v7}, Landroid/graphics/HardwareRenderer;->setLightSourceGeometry(FFFF)V

    iget-object v5, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    const v6, 0x3d1fbe77  # 0.039f

    invoke-virtual {v5, v6, v6}, Landroid/graphics/HardwareRenderer;->setLightSourceAlpha(FF)V

    return-void
.end method

.method private transformToRoot(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempLocation:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method private updateForView(Landroid/view/View;)Z
    .registers 6

    iget-wide v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mLastRenderedSourceDrawingId:J

    invoke-virtual {p1}, Landroid/view/View;->getUniqueDrawingId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getUniqueDrawingId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mLastRenderedSourceDrawingId:J

    const/4 v0, 0x1

    return v0
.end method

.method private updateRootNode(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->transformToRoot(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mCaptureRenderNode:Landroid/graphics/RenderNode;

    iget-object v2, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    iget-object v1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mCaptureRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RecordingCanvas;->enableZ()V

    iget-object v2, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    invoke-virtual {v0}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-virtual {v1, v2}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    :cond_40
    iget-object v3, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mCaptureRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v3}, Landroid/graphics/RenderNode;->endRecording()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer;->destroy()V

    return-void
.end method

.method public renderView(Landroid/view/View;Landroid/graphics/Rect;)I
    .registers 6

    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer;->createRenderRequest()Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->setVsyncTime(J)Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    invoke-direct {p0, p1}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->updateForView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {p0, p1}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->setupLighting(Landroid/view/View;)V

    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->updateRootNode(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->syncAndDraw()I

    move-result v1

    return v1
.end method

.method public setColorMode(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/graphics/HardwareRenderer;->setColorMode(I)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public trimMemory()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/view/ScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer;->clearContent()V

    return-void
.end method
