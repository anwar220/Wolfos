# classes2.dex

.class public final Landroid/view/contentcapture/ContentCaptureManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;,
        Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;,
        Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;,
        Landroid/view/contentcapture/ContentCaptureManager$Dumper;,
        Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;,
        Landroid/view/contentcapture/ContentCaptureManager$LoggingLevel;,
        Landroid/view/contentcapture/ContentCaptureManager$DataShareError;
    }
.end annotation


# static fields
.field public static final DATA_SHARE_ERROR_CONCURRENT_REQUEST:I = 0x2

.field public static final DATA_SHARE_ERROR_TIMEOUT_INTERRUPTED:I = 0x3

.field public static final DATA_SHARE_ERROR_UNKNOWN:I = 0x1

.field public static final DEBUG:Z = false

.field public static final DEFAULT_IDLE_FLUSHING_FREQUENCY_MS:I = 0x1388

.field public static final DEFAULT_LOG_HISTORY_SIZE:I = 0xa

.field public static final DEFAULT_MAX_BUFFER_SIZE:I = 0x1f4

.field public static final DEFAULT_TEXT_CHANGE_FLUSHING_FREQUENCY_MS:I = 0x3e8

.field public static final DEVICE_CONFIG_PROPERTY_IDLE_FLUSH_FREQUENCY:Ljava/lang/String; = "idle_flush_frequency"

.field public static final DEVICE_CONFIG_PROPERTY_IDLE_UNBIND_TIMEOUT:Ljava/lang/String; = "idle_unbind_timeout"

.field public static final DEVICE_CONFIG_PROPERTY_LOGGING_LEVEL:Ljava/lang/String; = "logging_level"

.field public static final DEVICE_CONFIG_PROPERTY_LOG_HISTORY_SIZE:Ljava/lang/String; = "log_history_size"

.field public static final DEVICE_CONFIG_PROPERTY_MAX_BUFFER_SIZE:Ljava/lang/String; = "max_buffer_size"

.field public static final DEVICE_CONFIG_PROPERTY_SERVICE_EXPLICITLY_ENABLED:Ljava/lang/String; = "service_explicitly_enabled"

.field public static final DEVICE_CONFIG_PROPERTY_TEXT_CHANGE_FLUSH_FREQUENCY:Ljava/lang/String; = "text_change_flush_frequency"

.field public static final DUMPABLE_NAME:Ljava/lang/String; = "ContentCaptureManager"

.field public static final LOGGING_LEVEL_DEBUG:I = 0x1

.field public static final LOGGING_LEVEL_OFF:I = 0x0

.field public static final LOGGING_LEVEL_VERBOSE:I = 0x2

.field public static final NO_SESSION_ID:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RESULT_CODE_FALSE:I = 0x2

.field public static final RESULT_CODE_OK:I = 0x0

.field public static final RESULT_CODE_SECURITY_EXCEPTION:I = -0x1

.field public static final RESULT_CODE_TRUE:I = 0x1

.field private static final SYNC_CALLS_TIMEOUT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDataShareAdapterResourceManager:Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;

.field private mDumpable:Landroid/view/contentcapture/ContentCaptureManager$Dumper;

.field private mFlags:I

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mMainSession:Landroid/view/contentcapture/MainContentCaptureSession;

.field final mOptions:Landroid/content/ContentCaptureOptions;

.field private final mService:Landroid/view/contentcapture/IContentCaptureManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFlags(Landroid/view/contentcapture/ContentCaptureManager;)I
    .registers 1

    iget p0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Landroid/view/contentcapture/ContentCaptureManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainSession(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/MainContentCaptureSession;
    .registers 1

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/MainContentCaptureSession;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/IContentCaptureManager;
    .registers 1

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContext:Landroid/content/Context;

    const-string v0, "service cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/IContentCaptureManager;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    const-string v0, "options cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentCaptureOptions;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget v0, v0, Landroid/content/ContentCaptureOptions;->loggingLevel:I

    invoke-static {v0}, Landroid/view/contentcapture/ContentCaptureHelper;->setLoggingLevel(I)V

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v0, :cond_4d

    sget-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;-><init>(Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager-IA;)V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mDataShareAdapterResourceManager:Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;

    return-void
.end method

.method private static getService()Landroid/view/contentcapture/IContentCaptureManager;
    .registers 1

    const-string v0, "content_capture"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceSettingsComponentName()Landroid/content/ComponentName;
    .registers 8

    nop

    const-string v0, "content_capture"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    invoke-static {v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v2

    new-instance v3, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v4, 0x1388

    invoke-direct {v3, v4}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    :try_start_16
    invoke-interface {v2, v3}, Landroid/view/contentcapture/IContentCaptureManager;->getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {v3}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_27

    invoke-virtual {v3}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    return-object v5

    :cond_27
    new-instance v5, Ljava/lang/SecurityException;

    invoke-virtual {v3}, Lcom/android/internal/util/SyncResultReceiver;->getStringResult()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_31} :catch_4b
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_16 .. :try_end_31} :catch_31

    :catch_31
    move-exception v4

    sget-object v5, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to get service settings componentName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_4b
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public static resetTemporaryService(I)V
    .registers 4

    invoke-static {}, Landroid/view/contentcapture/ContentCaptureManager;->getService()Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v0

    if-nez v0, :cond_d

    sget-object v1, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    const-string v2, "IContentCaptureManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :try_start_d
    invoke-interface {v0, p0}, Landroid/view/contentcapture/IContentCaptureManager;->resetTemporaryService(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_12

    nop

    return-void

    :catch_12
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static setDefaultServiceEnabled(IZ)V
    .registers 5

    invoke-static {}, Landroid/view/contentcapture/ContentCaptureManager;->getService()Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v0

    if-nez v0, :cond_d

    sget-object v1, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    const-string v2, "IContentCaptureManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :try_start_d
    invoke-interface {v0, p0, p1}, Landroid/view/contentcapture/IContentCaptureManager;->setDefaultServiceEnabled(IZ)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_12

    nop

    return-void

    :catch_12
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static setTemporaryService(ILjava/lang/String;I)V
    .registers 6

    invoke-static {}, Landroid/view/contentcapture/ContentCaptureManager;->getService()Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v0

    if-nez v0, :cond_d

    sget-object v1, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    const-string v2, "IContentCaptureManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :try_start_d
    invoke-interface {v0, p0, p1, p2}, Landroid/view/contentcapture/IContentCaptureManager;->setTemporaryService(ILjava/lang/String;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_12

    nop

    return-void

    :catch_12
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private syncRun(Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;)Lcom/android/internal/util/SyncResultReceiver;
    .registers 6

    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    :try_start_7
    invoke-interface {p1, v0}, Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;->run(Lcom/android/internal/util/SyncResultReceiver;)V

    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    nop

    return-object v0

    :cond_13
    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getStringResult()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1d} :catch_26
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_7 .. :try_end_1d} :catch_1d

    :catch_1d
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Fail to get syn run result from SyncResultReceiver."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_26
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public addDumpable(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mDumpable:Landroid/view/contentcapture/ContentCaptureManager$Dumper;

    if-nez v0, :cond_c

    new-instance v0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/contentcapture/ContentCaptureManager$Dumper;-><init>(Landroid/view/contentcapture/ContentCaptureManager;Landroid/view/contentcapture/ContentCaptureManager$Dumper-IA;)V

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mDumpable:Landroid/view/contentcapture/ContentCaptureManager$Dumper;

    :cond_c
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mDumpable:Landroid/view/contentcapture/ContentCaptureManager$Dumper;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->addDumpable(Landroid/util/Dumpable;)Z

    return-void
.end method

.method public flush(I)V
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/contentcapture/MainContentCaptureSession;->flush(I)V

    return-void
.end method

.method public getContentCaptureConditions()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/view/contentcapture/ContentCaptureCondition;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    new-instance v0, Landroid/view/contentcapture/ContentCaptureManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/contentcapture/ContentCaptureManager$$ExternalSyntheticLambda0;-><init>(Landroid/view/contentcapture/ContentCaptureManager;)V

    invoke-direct {p0, v0}, Landroid/view/contentcapture/ContentCaptureManager;->syncRun(Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;)Lcom/android/internal/util/SyncResultReceiver;

    move-result-object v0

    nop

    :try_start_18
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableListResult()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Landroid/view/contentcapture/ContentCaptureHelper;->toSet(Ljava/util/List;)Landroid/util/ArraySet;

    move-result-object v2
    :try_end_20
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_18 .. :try_end_20} :catch_21

    return-object v2

    :catch_21
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Fail to get content capture conditions."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getMainContentCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;
    .registers 6

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/MainContentCaptureSession;

    if-nez v1, :cond_32

    new-instance v1, Landroid/view/contentcapture/MainContentCaptureSession;

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    invoke-direct {v1, v2, p0, v3, v4}, Landroid/view/contentcapture/MainContentCaptureSession;-><init>(Landroid/content/Context;Landroid/view/contentcapture/ContentCaptureManager;Landroid/os/Handler;Landroid/view/contentcapture/IContentCaptureManager;)V

    iput-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/MainContentCaptureSession;

    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    if-eqz v1, :cond_32

    sget-object v1, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMainContentCaptureSession(): created "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/MainContentCaptureSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/MainContentCaptureSession;

    monitor-exit v0

    return-object v1

    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public getServiceComponentName()Landroid/content/ComponentName;
    .registers 5

    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->isContentCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    new-instance v0, Lcom/android/internal/util/SyncResultReceiver;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Lcom/android/internal/util/SyncResultReceiver;-><init>(I)V

    :try_start_15
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    invoke-interface {v1, v0}, Landroid/view/contentcapture/IContentCaptureManager;->getServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V

    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getParcelableResult()Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_20} :catch_2a
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_15 .. :try_end_20} :catch_21

    return-object v1

    :catch_21
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Fail to get service componentName."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_2a
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public isContentCaptureEnabled()Z
    .registers 4

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/MainContentCaptureSession;

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_19

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/view/contentcapture/MainContentCaptureSession;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_17

    return v1

    :cond_17
    const/4 v0, 0x1

    return v0

    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public isContentCaptureFeatureEnabled()Z
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Landroid/view/contentcapture/ContentCaptureManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/view/contentcapture/ContentCaptureManager$$ExternalSyntheticLambda1;-><init>(Landroid/view/contentcapture/ContentCaptureManager;)V

    invoke-direct {p0, v0}, Landroid/view/contentcapture/ContentCaptureManager;->syncRun(Landroid/view/contentcapture/ContentCaptureManager$MyRunnable;)Lcom/android/internal/util/SyncResultReceiver;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {v0}, Lcom/android/internal/util/SyncResultReceiver;->getIntResult()I

    move-result v2

    packed-switch v2, :pswitch_data_48

    sget-object v3, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    goto :goto_17

    :pswitch_14  #0x2
    return v1

    :pswitch_15  #0x1
    const/4 v1, 0x1

    return v1

    :goto_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received invalid result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Lcom/android/internal/util/SyncResultReceiver$TimeoutException; {:try_start_a .. :try_end_2d} :catch_2e

    return v1

    :catch_2e
    move-exception v2

    sget-object v3, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to get content capture feature enable status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_15  #00000001
        :pswitch_14  #00000002
    .end packed-switch
.end method

.method synthetic lambda$getContentCaptureConditions$0$android-view-contentcapture-ContentCaptureManager(Lcom/android/internal/util/SyncResultReceiver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/view/contentcapture/IContentCaptureManager;->getContentCaptureConditions(Ljava/lang/String;Lcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method synthetic lambda$isContentCaptureFeatureEnabled$1$android-view-contentcapture-ContentCaptureManager(Lcom/android/internal/util/SyncResultReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    invoke-interface {v0, p1}, Landroid/view/contentcapture/IContentCaptureManager;->isContentCaptureFeatureEnabled(Lcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 7

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v1

    iget v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/view/contentcapture/MainContentCaptureSession;->start(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    throw v1
.end method

.method public onActivityDestroyed()V
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->destroy()V

    return-void
.end method

.method public onActivityPaused()V
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->notifySessionPaused()V

    return-void
.end method

.method public onActivityResumed()V
    .registers 2

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    iget-boolean v0, v0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/view/contentcapture/ContentCaptureManager;->getMainContentCaptureSession()Landroid/view/contentcapture/MainContentCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/contentcapture/MainContentCaptureSession;->notifySessionResumed()V

    return-void
.end method

.method public removeData(Landroid/view/contentcapture/DataRemovalRequest;)V
    .registers 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    invoke-interface {v0, p1}, Landroid/view/contentcapture/IContentCaptureManager;->removeData(Landroid/view/contentcapture/DataRemovalRequest;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    nop

    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setContentCaptureEnabled(Z)V
    .registers 5

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v0, :cond_28

    sget-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContentCaptureEnabled(): setting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_34

    :try_start_2d
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    goto :goto_3a

    :cond_34
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    :goto_3a
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/MainContentCaptureSession;

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_45

    if-eqz v1, :cond_44

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {v1, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->setDisabled(Z)Z

    :cond_44
    return-void

    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public shareData(Landroid/view/contentcapture/DataShareRequest;Ljava/util/concurrent/Executor;Landroid/view/contentcapture/DataShareWriteAdapter;)V
    .registers 8

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_9
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager;->mService:Landroid/view/contentcapture/IContentCaptureManager;

    new-instance v1, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;

    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mDataShareAdapterResourceManager:Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;

    const/4 v3, 0x0

    invoke-direct {v1, p2, p3, v2, v3}, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/view/contentcapture/DataShareWriteAdapter;Landroid/view/contentcapture/ContentCaptureManager$LocalDataShareAdapterResourceManager;Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate-IA;)V

    invoke-interface {v0, p1, v1}, Landroid/view/contentcapture/IContentCaptureManager;->shareData(Landroid/view/contentcapture/DataShareRequest;Landroid/view/contentcapture/IDataShareWriteAdapter;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_18

    nop

    return-void

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateWindowAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .registers 5

    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    if-eqz v0, :cond_1e

    sget-object v0, Landroid/view/contentcapture/ContentCaptureManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWindowAttributes(): window flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_33

    :try_start_2c
    iget v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    goto :goto_39

    :cond_33
    iget v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mFlags:I

    :goto_39
    iget-object v2, p0, Landroid/view/contentcapture/ContentCaptureManager;->mMainSession:Landroid/view/contentcapture/MainContentCaptureSession;

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_42

    if-eqz v2, :cond_41

    invoke-virtual {v2, v0}, Landroid/view/contentcapture/MainContentCaptureSession;->setDisabled(Z)Z

    :cond_41
    return-void

    :catchall_42
    move-exception v2

    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v2
.end method
