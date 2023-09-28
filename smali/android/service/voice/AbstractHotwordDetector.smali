# classes3.dex

.class abstract Landroid/service/voice/AbstractHotwordDetector;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/service/voice/HotwordDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/AbstractHotwordDetector$BinderCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Landroid/service/voice/HotwordDetector$Callback;

.field private final mDetectorType:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final mLock:Ljava/lang/Object;

.field private final mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field private mOnDestroyListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/service/voice/AbstractHotwordDetector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/service/voice/AbstractHotwordDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/service/voice/AbstractHotwordDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/voice/AbstractHotwordDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/service/voice/HotwordDetector$Callback;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/voice/AbstractHotwordDetector;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/service/voice/AbstractHotwordDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/voice/AbstractHotwordDetector;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Landroid/service/voice/AbstractHotwordDetector;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    iput p3, p0, Landroid/service/voice/AbstractHotwordDetector;->mDetectorType:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/service/voice/AbstractHotwordDetector;->mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    iget-object v0, p0, Landroid/service/voice/AbstractHotwordDetector;->mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Landroid/service/voice/AbstractHotwordDetector;->mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Landroid/service/voice/AbstractHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_12
    iget-object v1, p0, Landroid/service/voice/AbstractHotwordDetector;->mOnDestroyListener:Ljava/util/function/Consumer;

    invoke-interface {v1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method registerOnDestroyListener(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/voice/AbstractHotwordDetector;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/voice/AbstractHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/service/voice/AbstractHotwordDetector;->mOnDestroyListener:Ljava/util/function/Consumer;

    if-nez v1, :cond_b

    iput-object p1, p0, Landroid/service/voice/AbstractHotwordDetector;->mOnDestroyListener:Ljava/util/function/Consumer;

    monitor-exit v0

    return-void

    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "only one destroy listener can be registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public startRecognition(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;)Z
    .registers 8

    invoke-virtual {p0}, Landroid/service/voice/AbstractHotwordDetector;->throwIfDetectorIsNoLongerActive()V

    :try_start_3
    iget-object v0, p0, Landroid/service/voice/AbstractHotwordDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    new-instance v1, Landroid/service/voice/AbstractHotwordDetector$BinderCallback;

    iget-object v2, p0, Landroid/service/voice/AbstractHotwordDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/service/voice/AbstractHotwordDetector;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-direct {v1, v2, v3}, Landroid/service/voice/AbstractHotwordDetector$BinderCallback;-><init>(Landroid/os/Handler;Landroid/service/voice/HotwordDetector$Callback;)V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startListeningFromExternalSource(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_16
    const/4 v0, 0x1

    return v0
.end method

.method protected throwIfDetectorIsNoLongerActive()V
    .registers 3

    iget-object v0, p0, Landroid/service/voice/AbstractHotwordDetector;->mIsDetectorActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    sget-object v0, Landroid/service/voice/AbstractHotwordDetector;->TAG:Ljava/lang/String;

    const-string v1, "attempting to use a destroyed detector which is no longer active"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .registers 6

    invoke-virtual {p0}, Landroid/service/voice/AbstractHotwordDetector;->throwIfDetectorIsNoLongerActive()V

    iget-object v0, p0, Landroid/service/voice/AbstractHotwordDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_7
    iget v2, p0, Landroid/service/voice/AbstractHotwordDetector;->mDetectorType:I

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/service/voice/AbstractHotwordDetector;->updateStateLocked(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method protected updateStateLocked(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V
    .registers 12

    new-instance v0, Landroid/media/permission/Identity;

    invoke-direct {v0}, Landroid/media/permission/Identity;-><init>()V

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/permission/Identity;->packageName:Ljava/lang/String;

    :try_start_b
    iget-object v1, p0, Landroid/service/voice/AbstractHotwordDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/app/IVoiceInteractionManagerService;->updateState(Landroid/media/permission/Identity;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_17

    nop

    return-void

    :catch_17
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
