# classes3.dex

.class public final Landroid/view/ThreadedRenderer;
.super Landroid/graphics/HardwareRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ThreadedRenderer$SimpleRenderer;,
        Landroid/view/ThreadedRenderer$DrawCallbacks;,
        Landroid/view/ThreadedRenderer$WebViewOverlayProvider;
    }
.end annotation


# static fields
.field public static final DEBUG_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "debug.hwui.show_dirty_regions"

.field public static final DEBUG_FORCE_DARK:Ljava/lang/String; = "debug.hwui.force_dark"

.field public static final DEBUG_FPS_DIVISOR:Ljava/lang/String; = "debug.hwui.fps_divisor"

.field public static final DEBUG_OVERDRAW_PROPERTY:Ljava/lang/String; = "debug.hwui.overdraw"

.field public static final DEBUG_SHOW_LAYERS_UPDATES_PROPERTY:Ljava/lang/String; = "debug.hwui.show_layers_updates"

.field public static final DEBUG_SHOW_NON_RECTANGULAR_CLIP_PROPERTY:Ljava/lang/String; = "debug.hwui.show_non_rect_clip"

.field public static EGL_CONTEXT_PRIORITY_HIGH_IMG:I = 0x0

.field public static EGL_CONTEXT_PRIORITY_LOW_IMG:I = 0x0

.field public static EGL_CONTEXT_PRIORITY_MEDIUM_IMG:I = 0x0

.field public static EGL_CONTEXT_PRIORITY_REALTIME_NV:I = 0x0

.field public static final OVERDRAW_PROPERTY_SHOW:Ljava/lang/String; = "show"

.field static final PRINT_CONFIG_PROPERTY:Ljava/lang/String; = "debug.hwui.print_config"

.field static final PROFILE_MAXFRAMES_PROPERTY:Ljava/lang/String; = "debug.hwui.profile.maxframes"

.field public static final PROFILE_PROPERTY:Ljava/lang/String; = "debug.hwui.profile"

.field public static final PROFILE_PROPERTY_VISUALIZE_BARS:Ljava/lang/String; = "visual_bars"

.field private static final VISUALIZERS:[Ljava/lang/String;

.field public static sRendererEnabled:Z

.field public static sTrimForeground:Z


# instance fields
.field private mEnabled:Z

.field private mHeight:I

.field private mInitialized:Z

.field private mInsetLeft:I

.field private mInsetTop:I

.field private final mLightRadius:F

.field private final mLightY:F

.field private final mLightZ:F

.field private mNextRtFrameCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/HardwareRenderer$FrameDrawingCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRequested:Z

.field private mRootNodeNeedsUpdate:Z

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private final mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

.field private mWebViewOverlaysEnabled:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x3357

    sput v0, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_REALTIME_NV:I

    const/16 v0, 0x3101

    sput v0, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_HIGH_IMG:I

    const/16 v0, 0x3102

    sput v0, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_MEDIUM_IMG:I

    const/16 v0, 0x3103

    sput v0, Landroid/view/ThreadedRenderer;->EGL_CONTEXT_PRIORITY_LOW_IMG:I

    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sRendererEnabled:Z

    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    const-string/jumbo v0, "visual_bars"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/ThreadedRenderer;->VISUALIZERS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Landroid/graphics/HardwareRenderer;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    new-instance v2, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;-><init>(Landroid/view/ThreadedRenderer$WebViewOverlayProvider-IA;)V

    iput-object v2, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlaysEnabled:Z

    invoke-virtual {p0, p3}, Landroid/view/ThreadedRenderer;->setName(Ljava/lang/String;)V

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    sget-object v2, Lcom/android/internal/R$styleable;->Lighting:[I

    invoke-virtual {p1, v3, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {v2, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v0, v1}, Landroid/view/ThreadedRenderer;->setLightSourceAlpha(FF)V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    invoke-static {}, Landroid/view/ThreadedRenderer;->isWebViewOverlaysEnabled()Z

    move-result v0

    return v0
.end method

.method public static create(Landroid/content/Context;ZLjava/lang/String;)Landroid/view/ThreadedRenderer;
    .registers 4

    new-instance v0, Landroid/view/ThreadedRenderer;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/ThreadedRenderer;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    return-object v0
.end method

.method private static destroyResources(Landroid/view/View;)V
    .registers 1

    invoke-virtual {p0}, Landroid/view/View;->destroyHardwareResources()V

    return-void
.end method

.method private static dumpArgsToFlags([Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x1

    if-eqz p0, :cond_45

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_45

    :cond_7
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_9
    array-length v3, p0

    if-ge v2, v3, :cond_44

    aget-object v3, p0, v2

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_46

    :cond_16
    goto :goto_35

    :sswitch_17
    const-string/jumbo v5, "reset"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    move v4, v0

    goto :goto_35

    :sswitch_22
    const-string v5, "-a"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v4, 0x2

    goto :goto_35

    :sswitch_2c
    const-string v5, "framestats"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v4, 0x0

    :goto_35
    packed-switch v4, :pswitch_data_54

    goto :goto_41

    :pswitch_39  #0x2
    const/4 v1, 0x1

    goto :goto_41

    :pswitch_3b  #0x1
    or-int/lit8 v1, v1, 0x2

    goto :goto_41

    :pswitch_3e  #0x0
    or-int/lit8 v1, v1, 0x1

    nop

    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_44
    return v1

    :cond_45
    :goto_45
    return v0

    :sswitch_data_46
    .sparse-switch
        -0xf0608ae -> :sswitch_2c
        0x5d4 -> :sswitch_22
        0x6761d4f -> :sswitch_17
    .end sparse-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_3e  #00000000
        :pswitch_3b  #00000001
        :pswitch_39  #00000002
    .end packed-switch
.end method

.method public static enableForegroundTrimming()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sTrimForeground:Z

    return-void
.end method

.method public static handleDumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/view/ThreadedRenderer;->dumpArgsToFlags([Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Landroid/view/ThreadedRenderer;->dumpGlobalProfileInfo(Ljava/io/FileDescriptor;I)V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/view/WindowManagerGlobal;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method public static initForSystemProcess()V
    .registers 1

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/ThreadedRenderer;->sRendererEnabled:Z

    goto :goto_d

    :cond_a
    invoke-static {}, Landroid/view/ThreadedRenderer;->enableForegroundTrimming()V

    :goto_d
    return-void
.end method

.method private updateEnabledState(Landroid/view/Surface;)V
    .registers 3

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_f

    :cond_9
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    goto :goto_13

    :cond_f
    :goto_f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    :goto_13
    return-void
.end method

.method private updateRootDisplayList(Landroid/view/View;Landroid/view/ThreadedRenderer$DrawCallbacks;)V
    .registers 9

    const-wide/16 v0, 0x8

    const-string v2, "Record View#draw()"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-interface {p2}, Landroid/view/ThreadedRenderer$DrawCallbacks;->onPreRecordViewDraw()V

    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateViewTreeDisplayList(Landroid/view/View;)V

    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    new-instance v3, Landroid/view/ThreadedRenderer$1;

    invoke-direct {v3, p0, v2}, Landroid/view/ThreadedRenderer$1;-><init>(Landroid/view/ThreadedRenderer;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v3}, Landroid/view/ThreadedRenderer;->setFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    :cond_1e
    iget-boolean v2, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    if-nez v2, :cond_2a

    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v2

    if-nez v2, :cond_60

    :cond_2a
    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v4, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v2

    :try_start_34
    invoke-virtual {v2}, Landroid/graphics/RecordingCanvas;->save()I

    move-result v3

    iget v4, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    int-to-float v4, v4

    iget v5, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    invoke-interface {p2, v2}, Landroid/view/ThreadedRenderer$DrawCallbacks;->onPreDraw(Landroid/graphics/RecordingCanvas;)V

    invoke-virtual {v2}, Landroid/graphics/RecordingCanvas;->enableZ()V

    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    invoke-virtual {v2}, Landroid/graphics/RecordingCanvas;->disableZ()V

    invoke-interface {p2, v2}, Landroid/view/ThreadedRenderer$DrawCallbacks;->onPostDraw(Landroid/graphics/RecordingCanvas;)V

    invoke-virtual {v2, v3}, Landroid/graphics/RecordingCanvas;->restoreToCount(I)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z
    :try_end_5a
    .catchall {:try_start_34 .. :try_end_5a} :catchall_67

    iget-object v3, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {v3}, Landroid/graphics/RenderNode;->endRecording()V

    nop

    :cond_60
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    invoke-interface {p2}, Landroid/view/ThreadedRenderer$DrawCallbacks;->onPostRecordViewDraw()V

    return-void

    :catchall_67
    move-exception v0

    iget-object v1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->endRecording()V

    throw v0
.end method

.method private updateViewTreeDisplayList(Landroid/view/View;)V
    .registers 5

    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    move v0, v2

    :goto_11
    iput-boolean v0, p1, Landroid/view/View;->mRecreateDisplayList:Z

    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    invoke-virtual {p1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    iput-boolean v2, p1, Landroid/view/View;->mRecreateDisplayList:Z

    return-void
.end method

.method private updateWebViewOverlayCallbacks()V
    .registers 3

    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->shouldEnableOverlaySupport()Z

    move-result v0

    iget-boolean v1, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlaysEnabled:Z

    if-eq v0, v1, :cond_20

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlaysEnabled:Z

    if-eqz v0, :cond_19

    iget-object v1, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {p0, v1}, Landroid/view/ThreadedRenderer;->setASurfaceTransactionCallback(Landroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;)V

    iget-object v1, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {p0, v1}, Landroid/view/ThreadedRenderer;->setPrepareSurfaceControlForWebviewCallback(Landroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;)V

    goto :goto_20

    :cond_19
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ThreadedRenderer;->setASurfaceTransactionCallback(Landroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;)V

    invoke-virtual {p0, v1}, Landroid/view/ThreadedRenderer;->setPrepareSurfaceControlForWebviewCallback(Landroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;)V

    :cond_20
    :goto_20
    return-void
.end method


# virtual methods
.method captureRenderingCommands()Landroid/graphics/Picture;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    invoke-super {p0}, Landroid/graphics/HardwareRenderer;->destroy()V

    return-void
.end method

.method destroyHardwareResources(Landroid/view/View;)V
    .registers 2

    invoke-static {p1}, Landroid/view/ThreadedRenderer;->destroyResources(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->clearContent()V

    return-void
.end method

.method draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/ThreadedRenderer$DrawCallbacks;)V
    .registers 8

    iget-object v0, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mViewFrameInfo:Landroid/view/ViewFrameInfo;

    invoke-virtual {v0}, Landroid/view/ViewFrameInfo;->markDrawStart()V

    invoke-direct {p0, p1, p3}, Landroid/view/ThreadedRenderer;->updateRootDisplayList(Landroid/view/View;Landroid/view/ThreadedRenderer$DrawCallbacks;)V

    iget-object v0, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz v0, :cond_2d

    iget-object v0, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_25

    iget-object v2, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RenderNode;

    invoke-virtual {p0, v2}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/graphics/RenderNode;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_25
    iget-object v1, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-object v1, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    :cond_2d
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getUpdatedFrameInfo()Landroid/graphics/FrameInfo;

    move-result-object v0

    const-wide/16 v1, 0x8

    const-string/jumbo v3, "syncAndDrawFrame"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->syncAndDrawFrame(Landroid/graphics/FrameInfo;)I

    move-result v3

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    and-int/lit8 v1, v3, 0x2

    if-eqz v1, :cond_57

    const-string v1, "OpenGLRenderer"

    const-string v2, "Surface lost, forcing relayout"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    iget-object v1, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->requestLayout()V

    :cond_57
    and-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_60

    iget-object v1, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->invalidate()V

    :cond_60
    return-void
.end method

.method dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    invoke-static {p3}, Landroid/view/ThreadedRenderer;->dumpArgsToFlags([Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ThreadedRenderer;->dumpProfileInfo(Ljava/io/FileDescriptor;I)V

    return-void
.end method

.method getHeight()I
    .registers 2

    iget v0, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    return v0
.end method

.method public getRootNode()Landroid/graphics/RenderNode;
    .registers 2

    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    return-object v0
.end method

.method getWidth()I
    .registers 2

    iget v0, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    return v0
.end method

.method initialize(Landroid/view/Surface;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer;->setSurface(Landroid/view/Surface;)V

    return v0
.end method

.method initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0, p4}, Landroid/view/ThreadedRenderer;->initialize(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0, p1, p2, p3, p5}, Landroid/view/ThreadedRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method invalidateRoot()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    return-void
.end method

.method isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mEnabled:Z

    return v0
.end method

.method isRequested()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    return v0
.end method

.method public loadSystemProperties()Z
    .registers 2

    invoke-super {p0}, Landroid/graphics/HardwareRenderer;->loadSystemProperties()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    :cond_9
    return v0
.end method

.method registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public rendererOwnsSurfaceControlOpacity()Z
    .registers 2

    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-static {v0}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->-$$Nest$fgetmSurfaceControl(Landroid/view/ThreadedRenderer$WebViewOverlayProvider;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public setBlastBufferQueue(Landroid/graphics/BLASTBufferQueue;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->setBLASTBufferQueue(Landroid/graphics/BLASTBufferQueue;)V

    invoke-direct {p0}, Landroid/view/ThreadedRenderer;->updateWebViewOverlayCallbacks()V

    return-void
.end method

.method setEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/ThreadedRenderer;->mEnabled:Z

    return-void
.end method

.method setLightCenter(Landroid/view/View$AttachInfo;)V
    .registers 7

    iget-object v0, p1, Landroid/view/View$AttachInfo;->mPoint:Landroid/graphics/Point;

    iget-object v1, p1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    iget v2, p1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    iget v3, p1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    iget v4, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/ThreadedRenderer;->setLightSourceGeometry(FFFF)V

    return-void
.end method

.method setRequested(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/ThreadedRenderer;->mRequested:Z

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 3

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;)V

    goto :goto_10

    :cond_c
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;)V

    :goto_10
    return-void
.end method

.method public setSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/graphics/HardwareRenderer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    invoke-direct {p0}, Landroid/view/ThreadedRenderer;->updateWebViewOverlayCallbacks()V

    return-void
.end method

.method public setSurfaceControlOpaque(Z)Z
    .registers 3

    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mWebViewOverlayProvider:Landroid/view/ThreadedRenderer$WebViewOverlayProvider;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->setSurfaceControlOpaque(Z)Z

    move-result v0

    return v0
.end method

.method setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V
    .registers 10

    iput p1, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    iput p2, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    const/4 v0, 0x0

    if-eqz p4, :cond_33

    iget v1, p4, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_17

    iget v1, p4, Landroid/graphics/Rect;->right:I

    if-nez v1, :cond_17

    iget v1, p4, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_17

    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_33

    :cond_17
    iget v1, p4, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    iget v1, p4, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    iget v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    add-int/2addr v1, p1

    iget v2, p4, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v1, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    add-int/2addr v1, p2

    iget v2, p4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    goto :goto_3b

    :cond_33
    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    iput p1, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iput p2, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    :goto_3b
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/graphics/RenderNode;

    iget v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    neg-int v1, v1

    iget v2, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    neg-int v2, v2

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v4, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    invoke-virtual {p0, p3}, Landroid/view/ThreadedRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    return-void
.end method

.method unregisterRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mNextRtFrameCallbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method updateSurface(Landroid/view/Surface;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method
