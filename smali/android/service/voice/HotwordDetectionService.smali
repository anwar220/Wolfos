# classes3.dex

.class public abstract Landroid/service/voice/HotwordDetectionService;
.super Landroid/app/Service;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/HotwordDetectionService$Callback;,
        Landroid/service/voice/HotwordDetectionService$AudioSource;
    }
.end annotation


# static fields
.field public static final AUDIO_SOURCE_EXTERNAL:I = 0x2

.field public static final AUDIO_SOURCE_MICROPHONE:I = 0x1

.field private static final DBG:Z = false

.field public static final INITIALIZATION_STATUS_SUCCESS:I = 0x0

.field public static final INITIALIZATION_STATUS_UNKNOWN:I = 0x64

.field public static final KEY_INITIALIZATION_STATUS:Ljava/lang/String; = "initialization_status"

.field public static final MAXIMUM_NUMBER_OF_INITIALIZATION_STATUS_CUSTOM_ERROR:I = 0x2

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.voice.HotwordDetectionService"

.field private static final TAG:Ljava/lang/String; = "HotwordDetectionService"

.field private static final UPDATE_TIMEOUT_MILLIS:J = 0x4e20L


# instance fields
.field private mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

.field private final mInterface:Landroid/service/voice/IHotwordDetectionService;


# direct methods
.method static bridge synthetic -$$Nest$fputmContentCaptureManager(Landroid/service/voice/HotwordDetectionService;Landroid/view/contentcapture/ContentCaptureManager;)V
    .registers 2

    iput-object p1, p0, Landroid/service/voice/HotwordDetectionService;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$monUpdateStateInternal(Landroid/service/voice/HotwordDetectionService;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/service/voice/HotwordDetectionService;->onUpdateStateInternal(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/voice/HotwordDetectionService$1;

    invoke-direct {v0, p0}, Landroid/service/voice/HotwordDetectionService$1;-><init>(Landroid/service/voice/HotwordDetectionService;)V

    iput-object v0, p0, Landroid/service/voice/HotwordDetectionService;->mInterface:Landroid/service/voice/IHotwordDetectionService;

    return-void
.end method

.method public static getMaxCustomInitializationStatus()I
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x2

    return v0
.end method

.method static synthetic lambda$onUpdateStateInternal$0(Landroid/os/IRemoteCallback;I)V
    .registers 5

    invoke-static {}, Landroid/service/voice/HotwordDetectionService;->getMaxCustomInitializationStatus()I

    move-result v0

    if-gt p1, v0, :cond_1c

    :try_start_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "initialization_status"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p0, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_16

    nop

    return-void

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The initialization status is invalid for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onUpdateStateInternal(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V
    .registers 11

    const/4 v0, 0x0

    if-eqz p3, :cond_9

    new-instance v1, Landroid/service/voice/HotwordDetectionService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Landroid/service/voice/HotwordDetectionService$$ExternalSyntheticLambda0;-><init>(Landroid/os/IRemoteCallback;)V

    move-object v0, v1

    :cond_9
    const-wide/16 v4, 0x4e20

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/service/voice/HotwordDetectionService;->onUpdateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;JLjava/util/function/IntConsumer;)V

    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const-string v0, "content_capture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/service/voice/HotwordDetectionService;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-object v0

    :cond_b
    invoke-super {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.service.voice.HotwordDetectionService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/service/voice/HotwordDetectionService;->mInterface:Landroid/service/voice/IHotwordDetectionService;

    invoke-interface {v0}, Landroid/service/voice/IHotwordDetectionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.service.voice.HotwordDetectionService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotwordDetectionService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetect(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/HotwordDetectionService$Callback;)V
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onDetect(Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;JLandroid/service/voice/HotwordDetectionService$Callback;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onDetect(Landroid/service/voice/HotwordDetectionService$Callback;)V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onStopDetection()V
    .registers 1

    return-void
.end method

.method public onUpdateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;JLjava/util/function/IntConsumer;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method
