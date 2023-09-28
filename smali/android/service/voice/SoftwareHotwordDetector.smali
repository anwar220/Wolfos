# classes3.dex

.class Landroid/service/voice/SoftwareHotwordDetector;
.super Landroid/service/voice/AbstractHotwordDetector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;,
        Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioFormat:Landroid/media/AudioFormat;

.field private final mCallback:Landroid/service/voice/HotwordDetector$Callback;

.field private final mHandler:Landroid/os/Handler;

.field private final mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/service/voice/SoftwareHotwordDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/service/voice/SoftwareHotwordDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/voice/SoftwareHotwordDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/service/voice/HotwordDetector$Callback;)V
    .registers 9

    const/4 v0, 0x2

    invoke-direct {p0, p1, p5, v0}, Landroid/service/voice/AbstractHotwordDetector;-><init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/service/voice/HotwordDetector$Callback;I)V

    iput-object p1, p0, Landroid/service/voice/SoftwareHotwordDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iput-object p2, p0, Landroid/service/voice/SoftwareHotwordDetector;->mAudioFormat:Landroid/media/AudioFormat;

    iput-object p5, p0, Landroid/service/voice/SoftwareHotwordDetector;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/service/voice/SoftwareHotwordDetector;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;

    invoke-direct {v2, v1, p5}, Landroid/service/voice/SoftwareHotwordDetector$InitializationStateListener;-><init>(Landroid/os/Handler;Landroid/service/voice/HotwordDetector$Callback;)V

    invoke-virtual {p0, p3, p4, v2, v0}, Landroid/service/voice/SoftwareHotwordDetector;->updateStateLocked(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;I)V

    return-void
.end method

.method private maybeCloseExistingSession()V
    .registers 1

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    invoke-virtual {p0}, Landroid/service/voice/SoftwareHotwordDetector;->stopRecognition()Z

    invoke-direct {p0}, Landroid/service/voice/SoftwareHotwordDetector;->maybeCloseExistingSession()V

    :try_start_6
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->shutdownHotwordDetectionService()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_10
    invoke-super {p0}, Landroid/service/voice/AbstractHotwordDetector;->destroy()V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    return-void
.end method

.method public startRecognition()Z
    .registers 6

    invoke-virtual {p0}, Landroid/service/voice/SoftwareHotwordDetector;->throwIfDetectorIsNoLongerActive()V

    invoke-direct {p0}, Landroid/service/voice/SoftwareHotwordDetector;->maybeCloseExistingSession()V

    :try_start_6
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/SoftwareHotwordDetector;->mAudioFormat:Landroid/media/AudioFormat;

    new-instance v2, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;

    iget-object v3, p0, Landroid/service/voice/SoftwareHotwordDetector;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/service/voice/SoftwareHotwordDetector;->mCallback:Landroid/service/voice/HotwordDetector$Callback;

    invoke-direct {v2, v3, v4}, Landroid/service/voice/SoftwareHotwordDetector$BinderCallback;-><init>(Landroid/os/Handler;Landroid/service/voice/HotwordDetector$Callback;)V

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startListeningFromMic(Landroid/media/AudioFormat;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_16} :catch_1d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_1b
    const/4 v0, 0x1

    return v0

    :catch_1d
    move-exception v0

    sget-object v1, Landroid/service/voice/SoftwareHotwordDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRecognition failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public stopRecognition()Z
    .registers 2

    invoke-virtual {p0}, Landroid/service/voice/SoftwareHotwordDetector;->throwIfDetectorIsNoLongerActive()V

    :try_start_3
    iget-object v0, p0, Landroid/service/voice/SoftwareHotwordDetector;->mManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService;->stopListeningFromMic()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_d
    const/4 v0, 0x1

    return v0
.end method
