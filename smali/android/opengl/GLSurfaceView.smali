# classes2.dex

.class public Landroid/opengl/GLSurfaceView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/opengl/GLSurfaceView$GLThreadManager;,
        Landroid/opengl/GLSurfaceView$LogWriter;,
        Landroid/opengl/GLSurfaceView$GLThread;,
        Landroid/opengl/GLSurfaceView$EglHelper;,
        Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;,
        Landroid/opengl/GLSurfaceView$ComponentSizeChooser;,
        Landroid/opengl/GLSurfaceView$BaseConfigChooser;,
        Landroid/opengl/GLSurfaceView$EGLConfigChooser;,
        Landroid/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;,
        Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;,
        Landroid/opengl/GLSurfaceView$DefaultContextFactory;,
        Landroid/opengl/GLSurfaceView$EGLContextFactory;,
        Landroid/opengl/GLSurfaceView$Renderer;,
        Landroid/opengl/GLSurfaceView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final LOG_ATTACH_DETACH:Z = false

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLSurfaceView"

.field private static final sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

.field private mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

.field private mGLWrapper:Landroid/opengl/GLSurfaceView$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmDebugFlags(Landroid/opengl/GLSurfaceView;)I
    .registers 1

    iget p0, p0, Landroid/opengl/GLSurfaceView;->mDebugFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEGLConfigChooser(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    .registers 1

    iget-object p0, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEGLContextClientVersion(Landroid/opengl/GLSurfaceView;)I
    .registers 1

    iget p0, p0, Landroid/opengl/GLSurfaceView;->mEGLContextClientVersion:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEGLContextFactory(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;
    .registers 1

    iget-object p0, p0, Landroid/opengl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    .registers 1

    iget-object p0, p0, Landroid/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGLWrapper(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLWrapper;
    .registers 1

    iget-object p0, p0, Landroid/opengl/GLSurfaceView;->mGLWrapper:Landroid/opengl/GLSurfaceView$GLWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreserveEGLContextOnPause(Landroid/opengl/GLSurfaceView;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/opengl/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRenderer(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;
    .registers 1

    iget-object p0, p0, Landroid/opengl/GLSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetsGLThreadManager()Landroid/opengl/GLSurfaceView$GLThreadManager;
    .registers 1

    sget-object v0, Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/opengl/GLSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;-><init>(Landroid/opengl/GLSurfaceView$GLThreadManager-IA;)V

    sput-object v0, Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->init()V

    return-void
.end method

.method private checkRenderThreadState()V
    .registers 3

    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init()V
    .registers 2

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->requestExitAndWait()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_c

    :cond_7
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_c
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDebugFlags()I
    .registers 2

    iget v0, p0, Landroid/opengl/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .registers 2

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method public getRenderMode()I
    .registers 2

    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView;->mDetached:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    :cond_14
    new-instance v1, Landroid/opengl/GLSurfaceView$GLThread;

    iget-object v2, p0, Landroid/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Landroid/opengl/GLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_23

    invoke-virtual {v1, v0}, Landroid/opengl/GLSurfaceView$GLThread;->setRenderMode(I)V

    :cond_23
    iget-object v1, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView$GLThread;->start()V

    :cond_28
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView;->mDetached:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->requestExitAndWait()V

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView;->mDetached:Z

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->onResume()V

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender()V
    .registers 2

    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->requestRender()V

    return-void
.end method

.method public setDebugFlags(I)V
    .registers 2

    iput p1, p0, Landroid/opengl/GLSurfaceView;->mDebugFlags:I

    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .registers 16

    new-instance v8, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;-><init>(Landroid/opengl/GLSurfaceView;IIIIII)V

    invoke-virtual {p0, v8}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V
    .registers 2

    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .registers 3

    new-instance v0, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Landroid/opengl/GLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .registers 2

    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    iput p1, p0, Landroid/opengl/GLSurfaceView;->mEGLContextClientVersion:I

    return-void
.end method

.method public setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V
    .registers 2

    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    return-void
.end method

.method public setEGLWindowSurfaceFactory(Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V
    .registers 2

    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    return-void
.end method

.method public setGLWrapper(Landroid/opengl/GLSurfaceView$GLWrapper;)V
    .registers 2

    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mGLWrapper:Landroid/opengl/GLSurfaceView$GLWrapper;

    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/opengl/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    return-void
.end method

.method public setRenderMode(I)V
    .registers 3

    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView$GLThread;->setRenderMode(I)V

    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .registers 4

    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->checkRenderThreadState()V

    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_f

    new-instance v0, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Landroid/opengl/GLSurfaceView;Z)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    :cond_f
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    new-instance v0, Landroid/opengl/GLSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v1}, Landroid/opengl/GLSurfaceView$DefaultContextFactory;-><init>(Landroid/opengl/GLSurfaceView;Landroid/opengl/GLSurfaceView$DefaultContextFactory-IA;)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    :cond_1b
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_26

    new-instance v0, Landroid/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Landroid/opengl/GLSurfaceView$DefaultWindowSurfaceFactory-IA;)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    :cond_26
    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    new-instance v0, Landroid/opengl/GLSurfaceView$GLThread;

    iget-object v1, p0, Landroid/opengl/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->start()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6

    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Landroid/opengl/GLSurfaceView$GLThread;->onWindowResize(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->surfaceCreated()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->surfaceDestroyed()V

    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p2}, Landroid/opengl/GLSurfaceView$GLThread;->requestRenderAndNotify(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method