# classes3.dex

.class final Landroid/view/ThreadedRenderer$WebViewOverlayProvider;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/HardwareRenderer$PrepareSurfaceControlForWebviewCallback;
.implements Landroid/graphics/HardwareRenderer$ASurfaceTransactionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ThreadedRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WebViewOverlayProvider"
.end annotation


# static fields
.field private static final sOverlaysAreEnabled:Z


# instance fields
.field private mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field private mHasWebViewOverlays:Z

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSurfaceControl(Landroid/view/ThreadedRenderer$WebViewOverlayProvider;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/view/ThreadedRenderer;->access$000()Z

    move-result v0

    sput-boolean v0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->sOverlaysAreEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mHasWebViewOverlays:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ThreadedRenderer$WebViewOverlayProvider-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onMergeTransaction(JJJ)Z
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_8
    invoke-virtual {v0, p1, p2, p5, p6}, Landroid/graphics/BLASTBufferQueue;->mergeWithNextTransaction(JJ)V

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public prepare()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mHasWebViewOverlays:Z

    iget-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_12

    iget-object v1, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public setBLASTBufferQueue(Landroid/graphics/BLASTBufferQueue;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_13

    iget-boolean v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mHasWebViewOverlays:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public setSurfaceControlOpaque(Z)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mHasWebViewOverlays:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_8
    iget-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    monitor-exit p0

    return p1

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public shouldEnableOverlaySupport()Z
    .registers 2

    sget-boolean v0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->sOverlaysAreEnabled:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/ThreadedRenderer$WebViewOverlayProvider;->mBLASTBufferQueue:Landroid/graphics/BLASTBufferQueue;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
