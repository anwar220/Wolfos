# classes.dex

.class Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BurstRequestHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;
    }
.end annotation


# instance fields
.field private final mBurstImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

.field private final mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

.field private mCaptureFailed:Z

.field private mCapturePendingMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/Pair<",
            "Landroid/media/Image;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCaptureRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

.field private mCaptureStageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Landroid/media/Image;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mClientRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;

.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCaptureFailed(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureFailed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCapturePendingMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)Landroid/util/LongSparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCapturePendingMap:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureStageMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureStageMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckAndFireBurstProcessing(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->checkAndFireBurstProcessing()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCaptureFailed(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->notifyCaptureFailed()V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Ljava/util/HashMap;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;",
            "Ljava/util/HashMap<",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureStageMap:Ljava/util/HashMap;

    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCapturePendingMap:Landroid/util/LongSparseArray;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureFailed:Z

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iput-object p5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureRequestMap:Ljava/util/HashMap;

    iput-object p6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mBurstImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    return-void
.end method

.method private checkAndFireBurstProcessing()V
    .registers 9

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureRequestMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureStageMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_cb

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureStageMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_2e

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_2d

    goto :goto_2e

    :cond_2d
    goto :goto_18

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureRequestMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCapturePendingMap:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureStageMap:Ljava/util/HashMap;

    invoke-static {v3, v2, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$sminitializeParcelable(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/Byte;)Ljava/util/List;

    move-result-object v3

    :try_start_54
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmImageProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    invoke-interface {v4, v3, v5}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->process(Ljava/util/List;Landroid/hardware/camera2/extension/IProcessResultImpl;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_5f} :catch_60

    goto :goto_69

    :catch_60
    move-exception v4

    const-string v5, "CameraExtensionSessionImpl"

    const-string v6, "Failed to process multi-frame request! Extension service does not respond!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_69
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_81

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/extension/CaptureBundle;

    iget-object v6, v5, Landroid/hardware/camera2/extension/CaptureBundle;->captureImage:Landroid/hardware/camera2/extension/ParcelImage;

    iget-object v6, v6, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v6}, Landroid/hardware/HardwareBuffer;->close()V

    goto :goto_6d

    :cond_81
    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureStageMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/media/Image;

    invoke-virtual {v6}, Landroid/media/Image;->close()V

    goto :goto_8e

    :cond_a2
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureStageMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-eqz v0, :cond_b8

    :try_start_ad
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_c2

    :cond_b8
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c2
    .catchall {:try_start_ad .. :try_end_c2} :catchall_c6

    :goto_c2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_cb

    :catchall_c6
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_cb
    :goto_cb
    return-void
.end method

.method private notifyCaptureFailed()V
    .registers 6

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureFailed:Z

    if-nez v0, :cond_42

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureFailed:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_b
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_3d

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->close()V

    goto :goto_23

    :cond_37
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto :goto_42

    :catchall_3d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_42
    :goto_42
    return-void
.end method


# virtual methods
.method synthetic lambda$checkAndFireBurstProcessing$5$android-hardware-camera2-impl-CameraExtensionSessionImpl$BurstRequestHandler()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureProcessStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method synthetic lambda$checkAndFireBurstProcessing$6$android-hardware-camera2-impl-CameraExtensionSessionImpl$BurstRequestHandler()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method synthetic lambda$notifyCaptureFailed$0$android-hardware-camera2-impl-CameraExtensionSessionImpl$BurstRequestHandler()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method synthetic lambda$onCaptureCompleted$4$android-hardware-camera2-impl-CameraExtensionSessionImpl$BurstRequestHandler()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureProcessStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method synthetic lambda$onCaptureSequenceAborted$2$android-hardware-camera2-impl-CameraExtensionSessionImpl$BurstRequestHandler(I)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraExtensionSession;I)V

    return-void
.end method

.method synthetic lambda$onCaptureSequenceCompleted$3$android-hardware-camera2-impl-CameraExtensionSessionImpl$BurstRequestHandler(I)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraExtensionSession;I)V

    return-void
.end method

.method synthetic lambda$onCaptureStarted$1$android-hardware-camera2-impl-CameraExtensionSessionImpl$BurstRequestHandler(J)V
    .registers 6

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;J)V

    return-void
.end method

.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .registers 6

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->notifyCaptureFailed()V

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 13

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureRequestMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "CameraExtensionSessionImpl"

    if-nez v0, :cond_10

    const-string v0, "Unexpected still capture request received!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureRequestMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_bc

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmCaptureResultsSupported(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    if-nez v1, :cond_42

    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;I)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    :cond_42
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmImageProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v1

    if-eqz v1, :cond_8e

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCapturePendingMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_74

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCapturePendingMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureStageMap:Ljava/util/HashMap;

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->checkAndFireBurstProcessing()V

    goto :goto_c1

    :cond_74
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCapturePendingMap:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    new-instance v5, Landroid/util/Pair;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureStageMap:Ljava/util/HashMap;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v6, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c1

    :cond_8e
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureRequestMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_97
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)V

    invoke-interface {v1, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    if-eqz v1, :cond_b2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v7, p3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$minitializeFilteredResults(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    invoke-virtual {v1, v5, v6, v7}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;->onCaptureCompleted(JLandroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_b2
    .catchall {:try_start_97 .. :try_end_b2} :catchall_b7

    :cond_b2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_c1

    :catchall_b7
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_bc
    const-string v3, "Capture result without valid sensor timestamp!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c1
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 4

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->notifyCaptureFailed()V

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .registers 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 12

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmImageProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;

    if-nez v2, :cond_1c

    new-instance v2, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback-IA;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;

    const/4 v0, 0x1

    goto :goto_25

    :cond_1c
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmImageProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v2

    if-nez v2, :cond_25

    const/4 v0, 0x1

    :cond_25
    :goto_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_51

    if-eqz v0, :cond_3f

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_2c
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, p3, p4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;J)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_3a

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3f

    :catchall_3a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_3f
    :goto_3f
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mBurstImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    if-eqz v1, :cond_50

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;

    if-eqz v2, :cond_50

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$ImageCallback;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->registerListener(Ljava/lang/Long;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;)V

    :cond_50
    return-void

    :catchall_51
    move-exception v2

    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v2
.end method
