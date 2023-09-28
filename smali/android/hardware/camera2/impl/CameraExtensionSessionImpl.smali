# classes.dex

.class public final Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
.super Landroid/hardware/camera2/CameraExtensionSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CloseRequestHandler;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$ImageLoopbackCallback;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler;
    }
.end annotation


# static fields
.field private static final PREVIEW_QUEUE_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "CameraExtensionSessionImpl"


# instance fields
.field private mBurstCaptureImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

.field private mBurstCaptureImageReader:Landroid/media/ImageReader;

.field private final mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

.field private mCameraBurstSurface:Landroid/view/Surface;

.field private final mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraRepeatingSurface:Landroid/view/Surface;

.field private mCaptureResultsSupported:Z

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mClientCaptureSurface:Landroid/view/Surface;

.field private mClientRepeatingRequestSurface:Landroid/view/Surface;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mExtensionClientId:J

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

.field private mImageJpegProcessor:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

.field private mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

.field private final mInitializeHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

.field private mInitialized:Z

.field final mInterfaceLock:Ljava/lang/Object;

.field private mInternalRepeatingRequestEnabled:Z

.field private final mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

.field private mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

.field private mPreviewProcessorType:I

.field private mPreviewRequestUpdateProcessor:Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

.field private mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

.field private mRepeatingRequestImageReader:Landroid/media/ImageReader;

.field private mRepeatingRequestImageWriter:Landroid/media/ImageWriter;

.field private final mSessionId:I

.field private mStubCaptureImageReader:Landroid/media/ImageReader;

.field private final mSupportedPreviewSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedRequestKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedResultKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmCameraDevice(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/CameraDevice;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureResultsSupported(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureResultsSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureSession(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientRepeatingRequestSurface(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/view/Surface;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/ICaptureProcessorImpl;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInitializeHandler(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitializeHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInternalRepeatingRequestEnabled(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInternalRepeatingRequestEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewExtender(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewImageProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewProcessorType(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)I
    .registers 1

    iget p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewProcessorType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewRequestUpdateProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewRequestUpdateProcessor:Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRepeatingRequestImageCallback(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRepeatingRequestImageWriter(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/media/ImageWriter;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageWriter:Landroid/media/ImageWriter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionId(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)I
    .registers 1

    iget p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSessionId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCaptureSession(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcompileInitialRequestList(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Ljava/util/ArrayList;
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->compileInitialRequestList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfinishPipelineInitialization(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->finishPipelineInitialization()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitializeFilteredResults(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->initializeFilteredResults(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnotifyConfigurationFailure(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->notifyConfigurationFailure()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyConfigurationSuccess(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->notifyConfigurationSuccess()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetInitialCaptureRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Ljava/util/List;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->setInitialCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRepeatingRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->setRepeatingRequest(Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetRepeatingRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->setRepeatingRequest(Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sminitializeParcelImage(Landroid/media/Image;)Landroid/hardware/camera2/extension/ParcelImage;
    .registers 1

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->initializeParcelImage(Landroid/media/Image;)Landroid/hardware/camera2/extension/ParcelImage;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sminitializeParcelable(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/Byte;)Ljava/util/List;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->initializeParcelable(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/Byte;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smnativeGetSurfaceFormat(Landroid/view/Surface;)I
    .registers 1

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->nativeGetSurfaceFormat(Landroid/view/Surface;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Ljava/util/List;JLandroid/hardware/camera2/CameraDevice;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;Ljava/util/concurrent/Executor;ILjava/util/Set;Ljava/util/Set;)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;",
            "Landroid/hardware/camera2/extension/IPreviewExtenderImpl;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;J",
            "Landroid/hardware/camera2/CameraDevice;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Landroid/hardware/camera2/CameraExtensionSession$StateCallback;",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/CameraExtensionSession;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mStubCaptureImageReader:Landroid/media/ImageReader;

    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageWriter:Landroid/media/ImageWriter;

    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageJpegProcessor:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewRequestUpdateProcessor:Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    const/4 v2, 0x2

    iput v2, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewProcessorType:I

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInternalRepeatingRequestEnabled:Z

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    move-wide/from16 v3, p4

    iput-wide v3, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mExtensionClientId:J

    move-object/from16 v5, p1

    iput-object v5, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    move-object/from16 v6, p2

    iput-object v6, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    move-object/from16 v7, p6

    iput-object v7, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    move-object/from16 v8, p9

    iput-object v8, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    move-object/from16 v9, p10

    iput-object v9, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v10, p7

    iput-object v10, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    move-object/from16 v11, p8

    iput-object v11, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    move-object/from16 v12, p3

    iput-object v12, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSupportedPreviewSizes:Ljava/util/List;

    new-instance v13, Landroid/os/HandlerThread;

    const-string v14, "CameraExtensionSessionImpl"

    invoke-direct {v13, v14}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v13, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    new-instance v14, Landroid/os/Handler;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v14, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v14, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x0

    iput-boolean v13, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    new-instance v13, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    invoke-direct {v13, v0, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler-IA;)V

    iput-object v13, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitializeHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    move/from16 v1, p11

    iput v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSessionId:I

    move-object/from16 v13, p12

    iput-object v13, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSupportedRequestKeys:Ljava/util/Set;

    move-object/from16 v14, p13

    iput-object v14, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSupportedResultKeys:Ljava/util/Set;

    invoke-interface/range {p13 .. p13}, Ljava/util/Set;->isEmpty()Z

    move-result v15

    xor-int/2addr v2, v15

    iput-boolean v2, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureResultsSupported:Z

    return-void
.end method

.method private compileInitialRequestList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/extension/CaptureStageImpl;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v1}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->onEnableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v2}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onEnableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1b} :catch_1c

    :cond_1b
    goto :goto_24

    :catch_1c
    move-exception v1

    const-string v2, "CameraExtensionSessionImpl"

    const-string v3, "Failed to initialize session parameters! Extension service does not respond!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-object v0
.end method

.method private createBurstRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;ILjava/util/Map;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraDevice;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureStageImpl;",
            ">;",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/view/Surface;",
            "I",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/CaptureStageImpl;

    :try_start_15
    invoke-virtual {p1, p5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3
    :try_end_19
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_15 .. :try_end_19} :catch_57

    nop

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSupportedRequestKeys:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p3, v5}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_37

    iget-object v7, v2, Landroid/hardware/camera2/extension/CaptureStageImpl;->parameters:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v7, v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_37
    goto :goto_20

    :cond_38
    invoke-virtual {v3, p4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    iget-object v6, v2, Landroid/hardware/camera2/extension/CaptureStageImpl;->parameters:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-static {v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->update(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_56

    iget v5, v2, Landroid/hardware/camera2/extension/CaptureStageImpl;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_56
    goto :goto_9

    :catch_57
    move-exception v1

    const/4 v3, 0x0

    return-object v3

    :cond_5a
    return-object v0
.end method

.method public static createCameraExtensionSession(Landroid/hardware/camera2/CameraDevice;Landroid/content/Context;Landroid/hardware/camera2/params/ExtensionSessionConfiguration;I)Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;)J

    move-result-wide v15

    const-wide/16 v1, 0x0

    cmp-long v3, v15, v1

    if-ltz v3, :cond_1de

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v14

    const-class v3, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v13, v14}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v12

    new-instance v3, Landroid/hardware/camera2/CameraExtensionCharacteristics;

    invoke-direct {v3, v0, v14, v12}, Landroid/hardware/camera2/CameraExtensionCharacteristics;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)V

    move-object v11, v3

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v4

    invoke-static {v3, v4, v12}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILandroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v3

    if-eqz v3, :cond_1c1

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_192

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_189

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getDynamicRangeProfile()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_8a

    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getStreamUseCase()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-nez v5, :cond_6d

    goto :goto_4e

    :cond_6d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported stream use case: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getStreamUseCase()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported dynamic range profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getDynamicRangeProfile()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a7
    nop

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v10

    const/4 v1, 0x0

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v2

    const-class v3, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v11, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getExtensionSupportedSizes(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v9

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v9}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->getRepeatingRequestSurface(Ljava/util/List;Ljava/util/List;)Landroid/view/Surface;

    move-result-object v17

    if-eqz v17, :cond_c9

    add-int/lit8 v1, v1, 0x1

    :cond_c9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v8, v2

    sget-object v2, Landroid/hardware/camera2/impl/CameraExtensionUtils;->SUPPORTED_CAPTURE_OUTPUT_FORMATS:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_d3
    if-ge v4, v3, :cond_ec

    aget v5, v2, v4

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v6

    invoke-virtual {v11, v6, v5}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getExtensionSupportedSizes(II)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_e9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e9
    add-int/lit8 v4, v4, 0x1

    goto :goto_d3

    :cond_ec
    nop

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v8}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->getBurstCaptureSurface(Ljava/util/List;Ljava/util/HashMap;)Landroid/view/Surface;

    move-result-object v18

    if-eqz v18, :cond_fb

    add-int/lit8 v1, v1, 0x1

    move v7, v1

    goto :goto_fc

    :cond_fb
    move v7, v1

    :goto_fc
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v7, v1, :cond_181

    iget-object v1, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-virtual {v12}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v1, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-virtual {v12}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->onInit(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v1, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-virtual {v12}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    iget-object v1, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-virtual {v12}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onInit(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    new-instance v19, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v1, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v1, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getStateCallback()Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getAvailableCaptureRequestKeys(I)Ljava/util/Set;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getAvailableCaptureResultKeys(I)Ljava/util/Set;

    move-result-object v23

    move-object/from16 v1, v19

    move-object v4, v9

    move-wide v5, v15

    move/from16 v24, v7

    move-object/from16 v7, p0

    move-object/from16 v25, v8

    move-object/from16 v8, v17

    move-object/from16 v26, v9

    move-object/from16 v9, v18

    move-object/from16 v27, v10

    move-object/from16 v10, v20

    move-object/from16 v20, v11

    move-object/from16 v11, v21

    move-object/from16 v21, v12

    move/from16 v12, p3

    move-object/from16 v28, v13

    move-object/from16 v13, v22

    move-object/from16 v22, v14

    move-object/from16 v14, v23

    invoke-direct/range {v1 .. v14}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;-><init>(Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Ljava/util/List;JLandroid/hardware/camera2/CameraDevice;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;Ljava/util/concurrent/Executor;ILjava/util/Set;Ljava/util/Set;)V

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->initialize()V

    return-object v1

    :cond_181
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "One or more unsupported output surfaces found!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_189
    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v28, v13

    move-object/from16 v22, v14

    goto :goto_19a

    :cond_192
    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v28, v13

    move-object/from16 v22, v14

    :goto_19a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected amount of output surfaces, received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected <= 2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported extension type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1de
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unsupported extension!"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;I)Landroid/hardware/camera2/CaptureRequest;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraDevice;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureStageImpl;",
            ">;",
            "Landroid/view/Surface;",
            "I)",
            "Landroid/hardware/camera2/CaptureRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;ILandroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    return-object v0
.end method

.method private createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;ILandroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraDevice;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureStageImpl;",
            ">;",
            "Landroid/view/Surface;",
            "I",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")",
            "Landroid/hardware/camera2/CaptureRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    invoke-virtual {p1, p4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    if-eqz p3, :cond_9

    invoke-virtual {v0, p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_9
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/extension/CaptureStageImpl;

    if-eqz v4, :cond_28

    iget-object v5, v4, Landroid/hardware/camera2/extension/CaptureStageImpl;->parameters:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-static {v2, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->update(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    :cond_28
    goto :goto_15

    :cond_29
    if-eqz p5, :cond_47

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSupportedRequestKeys:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p5, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_46

    invoke-virtual {v2, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_46
    goto :goto_31

    :cond_47
    return-object v1
.end method

.method private static findSmallestAspectMatchedSize(Ljava/util/List;Landroid/util/Size;)Landroid/util/Size;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Landroid/util/Size;",
            ")",
            "Landroid/util/Size;"
        }
    .end annotation

    const v0, 0x3c23d70a  # 0.01f

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-eqz v1, :cond_6a

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    if-nez v3, :cond_29

    move-object v3, v5

    :cond_29
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-lez v6, :cond_5e

    if-eqz v2, :cond_45

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    if-ge v6, v7, :cond_5e

    :cond_45
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    sub-float v7, v6, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3c23d70a  # 0.01f

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_5e

    move-object v2, v5

    :cond_5e
    goto :goto_1a

    :cond_5f
    if-nez v2, :cond_69

    const-string v4, "CameraExtensionSessionImpl"

    const-string v5, "AR matched size not found returning first size in list"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    :cond_69
    return-object v2

    :cond_6a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid input aspect ratio"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private finishPipelineInitialization()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    if-eqz v0, :cond_27

    iget v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewProcessorType:I

    const/16 v2, 0x22

    const/16 v3, 0xa

    if-nez v1, :cond_1e

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewRequestUpdateProcessor:Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->nativeGetSurfaceFormat(Landroid/view/Surface;)I

    move-result v4

    invoke-interface {v1, v0, v4}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;->onOutputSurface(Landroid/view/Surface;I)V

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    invoke-static {v0, v3, v2}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageWriter:Landroid/media/ImageWriter;

    goto :goto_27

    :cond_1e
    const/4 v4, 0x2

    if-ne v1, v4, :cond_27

    invoke-static {v0, v3, v2}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageWriter:Landroid/media/ImageWriter;

    :cond_27
    :goto_27
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3c

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    iget v3, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    invoke-interface {v1, v2, v3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onOutputSurface(Landroid/view/Surface;I)V

    :cond_3c
    return-void
.end method

.method private initializeBurstCapturePipeline()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getMaxCaptureStage()I

    move-result v0

    if-ne v0, v1, :cond_14

    goto :goto_1c

    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multiple stages expected without a valid capture processor!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_1c
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    const/16 v2, 0x100

    if-eqz v0, :cond_b7

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    const/16 v3, 0x23

    if-eqz v0, :cond_4c

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v0

    iget v1, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    if-ne v1, v2, :cond_3b

    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    invoke-direct {v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;-><init>(Landroid/hardware/camera2/extension/ICaptureProcessorImpl;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageJpegProcessor:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    :cond_3b
    iget v1, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iget v2, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getMaxCaptureStage()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    goto :goto_79

    :cond_4c
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getHeight()I

    move-result v2

    invoke-static {v0, v2, v3, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getHeight()I

    move-result v2

    invoke-static {v0, v2, v3, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mStubCaptureImageReader:Landroid/media/ImageReader;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onOutputSurface(Landroid/view/Surface;I)V

    :goto_79
    new-instance v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/media/ImageReader;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraBurstSurface:Landroid/view/Surface;

    new-instance v0, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/Size;-><init>()V

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/Size;->height:I

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    invoke-interface {v1, v0}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onResolutionUpdate(Landroid/hardware/camera2/extension/Size;)V

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onImageFormatUpdate(I)V

    goto :goto_d6

    :cond_b7
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    if-eqz v0, :cond_be

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraBurstSurface:Landroid/view/Surface;

    goto :goto_d6

    :cond_be
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getHeight()I

    move-result v3

    invoke-static {v0, v3, v2, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraBurstSurface:Landroid/view/Surface;

    :goto_d6
    return-void
.end method

.method private initializeFilteredResults(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .registers 6

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSupportedResultKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    :cond_20
    goto :goto_b

    :cond_21
    return-object v0
.end method

.method private static initializeParcelImage(Landroid/media/Image;)Landroid/hardware/camera2/extension/ParcelImage;
    .registers 5

    new-instance v0, Landroid/hardware/camera2/extension/ParcelImage;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/ParcelImage;-><init>()V

    invoke-virtual {p0}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    :try_start_b
    invoke-virtual {p0}, Landroid/media/Image;->getFence()Landroid/hardware/SyncFence;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/SyncFence;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Landroid/hardware/SyncFence;->getFdDup()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/camera2/extension/ParcelImage;->fence:Landroid/os/ParcelFileDescriptor;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1b} :catch_1c

    :cond_1b
    goto :goto_24

    :catch_1c
    move-exception v1

    const-string v2, "CameraExtensionSessionImpl"

    const-string v3, "Failed to parcel buffer fence!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->width:I

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->height:I

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->format:I

    invoke-virtual {p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->timestamp:J

    invoke-virtual {p0}, Landroid/media/Image;->getTransform()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->transform:I

    invoke-virtual {p0}, Landroid/media/Image;->getScalingMode()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->scalingMode:I

    invoke-virtual {p0}, Landroid/media/Image;->getPlaneCount()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->planeCount:I

    invoke-virtual {p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->crop:Landroid/graphics/Rect;

    return-object v0
.end method

.method private static initializeParcelable(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/Byte;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Landroid/media/Image;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureBundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    new-instance v4, Landroid/hardware/camera2/extension/CaptureBundle;

    invoke-direct {v4}, Landroid/hardware/camera2/extension/CaptureBundle;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Landroid/hardware/camera2/extension/CaptureBundle;->stage:I

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/media/Image;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->initializeParcelImage(Landroid/media/Image;)Landroid/hardware/camera2/extension/ParcelImage;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/camera2/extension/CaptureBundle;->captureImage:Landroid/hardware/camera2/extension/ParcelImage;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v5}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v5

    iput v5, v4, Landroid/hardware/camera2/extension/CaptureBundle;->sequenceId:I

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v5}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/camera2/extension/CaptureBundle;->captureResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    if-eqz p1, :cond_51

    iget-object v5, v4, Landroid/hardware/camera2/extension/CaptureBundle;->captureResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v6, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    :cond_51
    if-eqz p2, :cond_5a

    iget-object v5, v4, Landroid/hardware/camera2/extension/CaptureBundle;->captureResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v6, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    :cond_5a
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_5e
    return-object v0
.end method

.method private initializeRepeatingRequestPipeline()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;-><init>()V

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v1}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getProcessorType()I

    move-result v1

    iput v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewProcessorType:I

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    if-eqz v1, :cond_16

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v0

    goto :goto_3b

    :cond_16
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v1

    new-instance v2, Landroid/util/Size;

    iget v3, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iget v4, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSupportedPreviewSizes:Ljava/util/List;

    invoke-static {v3, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->findSmallestAspectMatchedSize(Ljava/util/List;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    const-wide/16 v4, 0x100

    iput-wide v4, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mUsage:J

    :goto_3b
    iget v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewProcessorType:I

    const/4 v2, 0x1

    const-string v3, "Failed casting preview processor!"

    if-ne v1, v2, :cond_88

    :try_start_42
    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v2}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getPreviewImageProcessor()Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;

    move-result-object v5

    iget v6, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    iget-wide v7, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mUsage:J

    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;-><init>(Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;IJLandroid/os/Handler;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;
    :try_end_56
    .catch Ljava/lang/ClassCastException; {:try_start_42 .. :try_end_56} :catch_81

    nop

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->onImageFormatUpdate(I)V

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    new-instance v2, Landroid/util/Size;

    iget v3, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iget v4, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->onResolutionUpdate(Landroid/util/Size;)V

    iget v5, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iget v6, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    const/16 v7, 0x23

    const/16 v8, 0xa

    iget-wide v9, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mUsage:J

    invoke-static/range {v5 .. v10}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    goto :goto_e0

    :catch_81
    move-exception v1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_88
    if-nez v1, :cond_ca

    :try_start_8a
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v1}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getRequestUpdateProcessor()Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewRequestUpdateProcessor:Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;
    :try_end_92
    .catch Ljava/lang/ClassCastException; {:try_start_8a .. :try_end_92} :catch_c3

    nop

    iget v4, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iget v5, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    const/16 v6, 0x22

    const/16 v7, 0xa

    iget-wide v8, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mUsage:J

    invoke-static/range {v4 .. v9}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    new-instance v1, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v1}, Landroid/hardware/camera2/extension/Size;-><init>()V

    iget v2, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iput v2, v1, Landroid/hardware/camera2/extension/Size;->width:I

    iget v2, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    iput v2, v1, Landroid/hardware/camera2/extension/Size;->height:I

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewRequestUpdateProcessor:Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    invoke-interface {v2, v1}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;->onResolutionUpdate(Landroid/hardware/camera2/extension/Size;)V

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewRequestUpdateProcessor:Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    const/16 v3, 0x22

    invoke-interface {v2, v3}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;->onImageFormatUpdate(I)V

    goto :goto_e0

    :catch_c3
    move-exception v1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_ca
    iget v4, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iget v5, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    const/16 v6, 0x22

    const/16 v7, 0xa

    iget-wide v8, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mUsage:J

    invoke-static/range {v4 .. v9}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    :goto_e0
    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    invoke-direct {v1, p0, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/media/ImageReader;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private static nativeGetSurfaceFormat(Landroid/view/Surface;)I
    .registers 2

    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v0

    return v0
.end method

.method private notifyConfigurationFailure()V
    .registers 5

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_26

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->release(Z)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_12
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_21

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_21
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private notifyConfigurationSuccess()V
    .registers 5

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_25

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_11
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_20

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private setInitialCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureStageImpl;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    return-void
.end method

.method private setRepeatingRequest(Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->setRepeatingRequest(Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;)I

    move-result v0

    return v0
.end method

.method private setRepeatingRequest(Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, v0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;ILandroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v2, v1, v3, p2}, Landroid/hardware/camera2/CameraCaptureSession;->setSingleRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result v2

    return v2
.end method


# virtual methods
.method public capture(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-boolean v0, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v0, :cond_d5

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_cd

    const/16 v16, -0x1

    iget-object v0, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    const/4 v8, 0x3

    const-string v9, "CameraExtensionSessionImpl"

    if-eqz v0, :cond_74

    invoke-virtual {v14, v0}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_74

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    :try_start_27
    iget-object v2, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v0, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureStages()Ljava/util/List;

    move-result-object v3

    iget-object v5, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraBurstSurface:Landroid/view/Surface;

    const/4 v6, 0x2

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createBurstRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;ILjava/util/Map;)Ljava/util/List;

    move-result-object v0
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_3a} :catch_67

    nop

    if-eqz v0, :cond_5e

    iget-object v1, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v2, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    iget-object v3, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;

    iget-object v4, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    move-object v8, v3

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object v13, v7

    move-object v6, v14

    move-object v14, v4

    invoke-direct/range {v8 .. v14}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Ljava/util/HashMap;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result v0

    goto :goto_b8

    :cond_5e
    move-object v6, v14

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Failed to create still capture burst request"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_67
    move-exception v0

    move-object v6, v14

    const-string v1, "Failed to initialize internal burst request! Extension service does not respond!"

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v1, v8}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    :cond_74
    move-object v6, v14

    iget-object v0, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    if-eqz v0, :cond_c5

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_c5

    const/4 v7, 0x0

    :try_start_80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v1}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getCaptureStage()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v4, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object v3, v0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;ILandroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_9c} :catch_b9

    move-object v0, v1

    nop

    iget-object v8, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v9, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-object v6, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    const/4 v7, 0x1

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;Z)V

    iget-object v1, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v0, v9, v1}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    nop

    :goto_b8
    return v0

    :catch_b9
    move-exception v0

    const-string v1, "Failed to initialize capture request! Extension service does not respond!"

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v1, v8}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    :cond_c5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Capture request to unknown output surface!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_cd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Single capture to both preview & still capture outputs target is not supported!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_55

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInternalRepeatingRequestEnabled:Z

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_57

    :try_start_14
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v2}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->onDisableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v3}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onDisableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v3

    if-eqz v3, :cond_2a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_2a} :catch_2b
    .catchall {:try_start_14 .. :try_end_2a} :catchall_57

    :cond_2a
    goto :goto_33

    :catch_2b
    move-exception v2

    :try_start_2c
    const-string v3, "CameraExtensionSessionImpl"

    const-string v4, "Failed to disable extension! Extension service does not respond!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_50

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v1, v3, v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CloseRequestHandler;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    invoke-direct {v4, p0, v5}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CloseRequestHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;)V

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    :cond_50
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    :cond_55
    monitor-exit v0

    return-void

    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_2c .. :try_end_59} :catchall_57

    throw v1
.end method

.method public getDevice()Landroid/hardware/camera2/CameraDevice;
    .registers 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public declared-synchronized initialize()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v0, :cond_e

    const-string v0, "CameraExtensionSessionImpl"

    const-string v1, "Session already initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_72

    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->initializeRepeatingRequestPipeline()V

    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    invoke-direct {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v2}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->onPresetSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->initializeBurstCapturePipeline()V

    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraBurstSurface:Landroid/view/Surface;

    invoke-direct {v3, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v3}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onPresetSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v3

    if-eqz v3, :cond_48

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    new-instance v4, Landroid/hardware/camera2/params/SessionConfiguration;

    const/4 v5, 0x0

    new-instance v6, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, v7}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v7, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler-IA;)V

    invoke-direct {v4, v5, v1, v6, v7}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6b

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v6, 0x1

    invoke-direct {p0, v5, v0, v8, v6}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    :cond_6b
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v5, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_70
    .catchall {:try_start_e .. :try_end_70} :catchall_72

    monitor-exit p0

    return-void

    :catchall_72
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic lambda$notifyConfigurationFailure$1$android-hardware-camera2-impl-CameraExtensionSessionImpl()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionSession$StateCallback;->onConfigureFailed(Landroid/hardware/camera2/CameraExtensionSession;)V

    return-void
.end method

.method synthetic lambda$notifyConfigurationSuccess$2$android-hardware-camera2-impl-CameraExtensionSessionImpl()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionSession$StateCallback;->onConfigured(Landroid/hardware/camera2/CameraExtensionSession;)V

    return-void
.end method

.method synthetic lambda$release$0$android-hardware-camera2-impl-CameraExtensionSessionImpl()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraExtensionSession;)V

    return-void
.end method

.method public release(Z)V
    .registers 9

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_5
    iput-boolean v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInternalRepeatingRequestEnabled:Z

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a6

    :try_start_c
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v3}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->onDeInit()V

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v3}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onDeInit()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_17
    .catchall {:try_start_c .. :try_end_16} :catchall_a6

    goto :goto_1f

    :catch_17
    move-exception v3

    :try_start_18
    const-string v4, "CameraExtensionSessionImpl"

    const-string v5, "Failed to release extensions! Extension service does not respond!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    iget-wide v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mExtensionClientId:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_32

    invoke-static {v3, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    iget-boolean v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v3, :cond_32

    const/4 v0, 0x1

    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->releaseSession()V

    :cond_32
    iput-boolean v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    const/4 v3, 0x0

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->close()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    :cond_3e
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    if-eqz v2, :cond_47

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    :cond_47
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    if-eqz v2, :cond_50

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->close()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    :cond_50
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    if-eqz v2, :cond_59

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    :cond_59
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mStubCaptureImageReader:Landroid/media/ImageReader;

    if-eqz v2, :cond_62

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mStubCaptureImageReader:Landroid/media/ImageReader;

    :cond_62
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageWriter:Landroid/media/ImageWriter;

    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Landroid/media/ImageWriter;->close()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageWriter:Landroid/media/ImageWriter;

    :cond_6b
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    if-eqz v2, :cond_74

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->close()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    :cond_74
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageJpegProcessor:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    if-eqz v2, :cond_7d

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->close()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageJpegProcessor:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    :cond_7d
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraBurstSurface:Landroid/view/Surface;

    monitor-exit v1
    :try_end_8a
    .catchall {:try_start_18 .. :try_end_8a} :catchall_a6

    if-eqz v0, :cond_a5

    if-nez p1, :cond_a5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_92
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_9c
    .catchall {:try_start_92 .. :try_end_9c} :catchall_a0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a5

    :catchall_a0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_a5
    :goto_a5
    return-void

    :catchall_a6
    move-exception v2

    :try_start_a7
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw v2
.end method

.method public setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_56

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    if-eqz v1, :cond_4e

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_46

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInternalRepeatingRequestEnabled:Z
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_5e

    :try_start_1f
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v1}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getCaptureStage()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v1

    new-instance v8, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;)V

    invoke-direct {p0, v1, v8, p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->setRepeatingRequest(Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;)I

    move-result v1
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_35} :catch_37
    .catchall {:try_start_1f .. :try_end_35} :catchall_5e

    :try_start_35
    monitor-exit v0

    return v1

    :catch_37
    move-exception v1

    const-string v2, "CameraExtensionSessionImpl"

    const-string v3, "Failed to set repeating request! Extension service does not respond"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v2

    :cond_46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid repeating request output target!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No registered preview surface"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_56
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Uninitialized component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_35 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public stopRepeating()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInternalRepeatingRequestEnabled:Z

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    monitor-exit v0

    return-void

    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Uninitialized component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method
