# classes.dex

.class public Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
.super Landroid/hardware/camera2/CameraOfflineSession;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;
    }
.end annotation


# static fields
.field private static final NANO_PER_SECOND:J = 0x3b9aca00L

.field private static final REQUEST_ID_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CameraOfflineSessionImpl"


# instance fields
.field private final DEBUG:Z

.field private final mCallbacks:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

.field private final mCameraId:Ljava/lang/String;

.field private mCaptureCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/impl/CaptureCallbackHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConfiguredOutputs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

.field final mInterfaceLock:Ljava/lang/Object;

.field private final mOfflineCallback:Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;

.field private final mOfflineExecutor:Ljava/util/concurrent/Executor;

.field private mOfflineInput:Ljava/util/AbstractMap$SimpleEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractMap$SimpleEntry<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mOfflineOutputs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mOfflineRequestLastFrameNumbersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

.field private final mTotalPartialCount:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCameraId(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureCallbackMap(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCharacteristics(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/hardware/camera2/CameraCharacteristics;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfiguredOutputs(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameNumberTracker(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/hardware/camera2/impl/FrameNumberTracker;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOfflineCallback(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineCallback:Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOfflineExecutor(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOfflineOutputs(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineOutputs:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemoteSession(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/hardware/camera2/ICameraOfflineSession;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTotalPartialCount(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)I
    .registers 1

    iget p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mTotalPartialCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckAndFireSequenceComplete(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->checkAndFireSequenceComplete()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Z
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->isClosed()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mremoveCompletedCallbackHolderLocked(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;JJJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->removeCompletedCallbackHolderLocked(JJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;Landroid/util/SparseArray;Ljava/util/AbstractMap$SimpleEntry;Landroid/util/SparseArray;Landroid/hardware/camera2/impl/FrameNumberTracker;Landroid/util/SparseArray;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Ljava/util/AbstractMap$SimpleEntry<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/impl/FrameNumberTracker;",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/impl/CaptureCallbackHolder;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/camera2/CameraOfflineSession;-><init>()V

    const-string v0, "debug.camera.enable_log_framework"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_15

    const-string v0, "debug.camera.enable_log_offline_session"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    move v1, v2

    :cond_16
    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->DEBUG:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineInput:Ljava/util/AbstractMap$SimpleEntry;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineOutputs:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    new-instance v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineRequestLastFrameNumbersList:Ljava/util/List;

    new-instance v0, Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    if-eqz p1, :cond_9e

    if-eqz p2, :cond_9e

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCameraId:Ljava/lang/String;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_72

    iput v2, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mTotalPartialCount:I

    goto :goto_78

    :cond_72
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mTotalPartialCount:I

    :goto_78
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineRequestLastFrameNumbersList:Ljava/util/List;

    invoke-interface {v1, p10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p8, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    iput-object p9, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    iput-object p7, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    iput-object p5, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineOutputs:Landroid/util/SparseArray;

    iput-object p6, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineInput:Ljava/util/AbstractMap$SimpleEntry;

    const-string/jumbo v1, "offline executor must not be null"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineExecutor:Ljava/util/concurrent/Executor;

    const-string/jumbo v1, "offline callback must not be null"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineCallback:Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;

    return-void

    :cond_9e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null argument given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkAndFireSequenceComplete()V
    .registers 25

    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedFrameNumber()J

    move-result-wide v2

    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedReprocessFrameNumber()J

    move-result-wide v4

    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedZslStillFrameNumber()J

    move-result-wide v6

    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineRequestLastFrameNumbersList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cf

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    const/4 v10, 0x0

    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getRequestId()I

    move-result v11

    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_2f
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_c8

    if-ltz v0, :cond_45

    :try_start_37
    iget-object v13, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_40

    goto :goto_46

    :catchall_40
    move-exception v0

    move-wide/from16 v22, v2

    goto/16 :goto_cb

    :cond_45
    const/4 v13, 0x0

    :goto_46
    if-eqz v13, :cond_83

    nop

    :try_start_49
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastRegularFrameNumber()J

    move-result-wide v14

    nop

    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastReprocessFrameNumber()J

    move-result-wide v16

    nop

    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastZslStillFrameNumber()J

    move-result-wide v18

    invoke-virtual {v13}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/camera2/impl/CaptureCallback;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v20

    invoke-virtual {v13}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/camera2/impl/CaptureCallback;->getSessionCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v21
    :try_end_67
    .catchall {:try_start_49 .. :try_end_67} :catchall_c8

    cmp-long v22, v14, v2

    if-gtz v22, :cond_7c

    cmp-long v22, v16, v4

    if-gtz v22, :cond_7c

    cmp-long v22, v18, v6

    if-gtz v22, :cond_7c

    const/4 v10, 0x1

    move-wide/from16 v22, v2

    :try_start_76
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_7e

    :cond_7c
    move-wide/from16 v22, v2

    :goto_7e
    move-object/from16 v2, v20

    move-object/from16 v3, v21

    goto :goto_8e

    :cond_83
    move-wide/from16 v22, v2

    const/16 v20, 0x0

    const/4 v2, 0x0

    move-object/from16 v21, v2

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    :goto_8e
    monitor-exit v12
    :try_end_8f
    .catchall {:try_start_76 .. :try_end_8f} :catchall_cd

    if-eqz v13, :cond_93

    if-eqz v10, :cond_96

    :cond_93
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    :cond_96
    if-eqz v10, :cond_c4

    if-eqz v3, :cond_c4

    if-eqz v2, :cond_c4

    new-instance v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$1;

    invoke-direct {v0, v1, v3, v11, v9}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$1;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;ILandroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;)V

    move-object v12, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    :try_start_a6
    invoke-interface {v2, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_bd

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_c4

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onDeviceIdle()V

    goto :goto_c4

    :catchall_bd
    move-exception v0

    move-object/from16 v16, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v16

    :cond_c4
    :goto_c4
    move-wide/from16 v2, v22

    goto/16 :goto_1a

    :catchall_c8
    move-exception v0

    move-wide/from16 v22, v2

    :goto_cb
    :try_start_cb
    monitor-exit v12
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_cd

    throw v0

    :catchall_cd
    move-exception v0

    goto :goto_cb

    :cond_cf
    return-void
.end method

.method private disconnect()V
    .registers 6

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

    if-eqz v1, :cond_46

    invoke-interface {v1}, Landroid/hardware/camera2/ICameraOfflineSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_4e

    :try_start_1a
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

    invoke-interface {v1}, Landroid/hardware/camera2/ICameraOfflineSession;->disconnect()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_20
    .catchall {:try_start_1a .. :try_end_1f} :catchall_4e

    goto :goto_29

    :catch_20
    move-exception v1

    :try_start_21
    const-string v2, "CameraOfflineSessionImpl"

    const-string v3, "Exception while disconnecting from offline session: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_29
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

    new-instance v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$4;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$4;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_4e

    :try_start_35
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_40

    :try_start_3a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_40
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v4

    :cond_46
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Offline session is not yet ready"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3a .. :try_end_50} :catchall_4e

    throw v1
.end method

.method private isClosed()Z
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private removeCompletedCallbackHolderLocked(JJJ)V
    .registers 28

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->DEBUG:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v6, "CameraOfflineSessionImpl"

    if-eqz v1, :cond_2a

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v4

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v3

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v2

    const-string/jumbo v7, "remove completed callback holders for lastCompletedRegularFrameNumber %d, lastCompletedReprocessFrameNumber %d, lastCompletedZslStillFrameNumber %d"

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/4 v1, 0x0

    iget-object v7, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineRequestLastFrameNumbersList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_31
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_eb

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    invoke-virtual {v8}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getRequestId()I

    move-result v9

    iget-object v10, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_52

    iget-object v11, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    goto :goto_53

    :cond_52
    const/4 v11, 0x0

    :goto_53
    if-eqz v11, :cond_e4

    nop

    invoke-virtual {v8}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastRegularFrameNumber()J

    move-result-wide v12

    nop

    invoke-virtual {v8}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastReprocessFrameNumber()J

    move-result-wide v14

    nop

    invoke-virtual {v8}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastZslStillFrameNumber()J

    move-result-wide v16

    cmp-long v18, v12, p1

    if-gtz v18, :cond_e1

    cmp-long v18, v14, p3

    if-gtz v18, :cond_e1

    cmp-long v18, v16, p5

    if-gtz v18, :cond_e1

    invoke-virtual {v8}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isSequenceCompleted()Z

    move-result v18

    if-eqz v18, :cond_c4

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->removeAt(I)V

    iget-boolean v5, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->DEBUG:Z

    if-eqz v5, :cond_be

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v5, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v5, v3

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v5, v2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v18, 0x3

    aput-object v19, v5, v18

    const/16 v19, 0x4

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v5, v19

    const/16 v19, 0x5

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v5, v19

    const/16 v19, 0x6

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v5, v19

    const-string v2, "Remove holder for requestId %d, because lastRegularFrame %d is <= %d, lastReprocessFrame %d is <= %d, lastZslStillFrame %d is <= %d"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    :cond_be
    const/16 v18, 0x3

    :goto_c0
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_e6

    :cond_c4
    move/from16 v18, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sequence not yet completed for request id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v5, v18

    const/4 v2, 0x2

    goto/16 :goto_31

    :cond_e1
    move/from16 v18, v5

    goto :goto_e6

    :cond_e4
    move/from16 v18, v5

    :goto_e6
    move/from16 v5, v18

    const/4 v2, 0x2

    goto/16 :goto_31

    :cond_eb
    return-void
.end method


# virtual methods
.method public abortCaptures()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public binderDied()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraOfflineSession on device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " died unexpectedly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraOfflineSessionImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->disconnect()V

    return-void
.end method

.method public capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public captureBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public captureSingleRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->disconnect()V

    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->disconnect()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public finalizeOutputConfigurations(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    return-object v0
.end method

.method public getDevice()Landroid/hardware/camera2/CameraDevice;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isReprocessable()Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyFailedSwitch()V
    .registers 6

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$2;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1d

    :try_start_c
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_17

    :try_start_11
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_17
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v4

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public prepare(ILandroid/view/Surface;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepare(Landroid/view/Surface;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRemoteSession(Landroid/hardware/camera2/ICameraOfflineSession;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_a

    :try_start_5
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->notifyFailedSwitch()V

    monitor-exit v0

    return-void

    :cond_a
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

    invoke-interface {p1}, Landroid/hardware/camera2/ICameraOfflineSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_43

    const/4 v2, 0x2

    if-eqz v1, :cond_3b

    const/4 v3, 0x0

    :try_start_14
    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_32
    .catchall {:try_start_14 .. :try_end_17} :catchall_43

    nop

    :try_start_18
    new-instance v2, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$3;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$3;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_43

    :try_start_21
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v5, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_2c

    :try_start_26
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_2c
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v5

    :catch_32
    move-exception v3

    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "The camera offline session has encountered a serious error"

    invoke-direct {v4, v2, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_3b
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const-string v4, "The camera offline session has encountered a serious error"

    invoke-direct {v3, v2, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v3

    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_26 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRepeatingBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSingleRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopRepeating()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsOfflineProcessing(Landroid/view/Surface;)Z
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public switchToOffline(Ljava/util/Collection;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;)Landroid/hardware/camera2/CameraOfflineSession;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;",
            ")",
            "Landroid/hardware/camera2/CameraOfflineSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tearDown(Landroid/view/Surface;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
