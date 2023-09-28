# classes3.dex

.class Landroid/view/SurfaceControl$SyncScreenCaptureListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceControl$ScreenCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncScreenCaptureListener"
.end annotation


# static fields
.field private static final SCREENSHOT_WAIT_TIME_S:I = 0x1


# instance fields
.field private final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mScreenshotHardwareBuffer:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;


# direct methods
.method static bridge synthetic -$$Nest$mwaitForScreenshot(Landroid/view/SurfaceControl$SyncScreenCaptureListener;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 1

    invoke-direct {p0}, Landroid/view/SurfaceControl$SyncScreenCaptureListener;->waitForScreenshot()Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/view/SurfaceControl$SyncScreenCaptureListener;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/SurfaceControl$SyncScreenCaptureListener-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/SurfaceControl$SyncScreenCaptureListener;-><init>()V

    return-void
.end method

.method private waitForScreenshot()Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceControl$SyncScreenCaptureListener;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "SurfaceControl"

    const-string v2, "Failed to wait for screen capture result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    iget-object v0, p0, Landroid/view/SurfaceControl$SyncScreenCaptureListener;->mScreenshotHardwareBuffer:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    return-object v0
.end method


# virtual methods
.method public onScreenCaptureComplete(Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)V
    .registers 3

    iput-object p1, p0, Landroid/view/SurfaceControl$SyncScreenCaptureListener;->mScreenshotHardwareBuffer:Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    iget-object v0, p0, Landroid/view/SurfaceControl$SyncScreenCaptureListener;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
