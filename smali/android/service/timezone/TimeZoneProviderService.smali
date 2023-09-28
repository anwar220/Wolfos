# classes3.dex

.class public abstract Landroid/service/timezone/TimeZoneProviderService;
.super Landroid/app/Service;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;
    }
.end annotation


# static fields
.field public static final PRIMARY_LOCATION_TIME_ZONE_PROVIDER_SERVICE_INTERFACE:Ljava/lang/String; = "android.service.timezone.PrimaryLocationTimeZoneProviderService"

.field public static final SECONDARY_LOCATION_TIME_ZONE_PROVIDER_SERVICE_INTERFACE:Ljava/lang/String; = "android.service.timezone.SecondaryLocationTimeZoneProviderService"

.field private static final TAG:Ljava/lang/String; = "TimeZoneProviderService"

.field public static final TEST_COMMAND_RESULT_ERROR_KEY:Ljava/lang/String; = "ERROR"

.field public static final TEST_COMMAND_RESULT_SUCCESS_KEY:Ljava/lang/String; = "SUCCESS"


# instance fields
.field private mEventFilteringAgeThresholdMillis:J

.field private final mHandler:Landroid/os/Handler;

.field private mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;

.field private final mLock:Ljava/lang/Object;

.field private mManager:Landroid/service/timezone/ITimeZoneProviderManager;

.field private final mWrapper:Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/service/timezone/TimeZoneProviderService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/timezone/TimeZoneProviderService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monStartUpdatesInternal(Landroid/service/timezone/TimeZoneProviderService;Landroid/service/timezone/ITimeZoneProviderManager;JJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/service/timezone/TimeZoneProviderService;->onStartUpdatesInternal(Landroid/service/timezone/ITimeZoneProviderManager;JJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monStopUpdatesInternal(Landroid/service/timezone/TimeZoneProviderService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/timezone/TimeZoneProviderService;->onStopUpdatesInternal()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;-><init>(Landroid/service/timezone/TimeZoneProviderService;Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper-IA;)V

    iput-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mWrapper:Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLock:Ljava/lang/Object;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private onStartUpdatesInternal(Landroid/service/timezone/ITimeZoneProviderManager;JJ)V
    .registers 8

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Landroid/service/timezone/TimeZoneProviderService;->mManager:Landroid/service/timezone/ITimeZoneProviderManager;

    iput-wide p4, p0, Landroid/service/timezone/TimeZoneProviderService;->mEventFilteringAgeThresholdMillis:J

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/timezone/TimeZoneProviderService;->mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;

    invoke-virtual {p0, p2, p3}, Landroid/service/timezone/TimeZoneProviderService;->onStartUpdates(J)V

    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private onStopUpdatesInternal()V
    .registers 3

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Landroid/service/timezone/TimeZoneProviderService;->onStopUpdates()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/timezone/TimeZoneProviderService;->mManager:Landroid/service/timezone/ITimeZoneProviderManager;

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private shouldSendEvent(Landroid/service/timezone/TimeZoneProviderEvent;)Z
    .registers 8

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;

    invoke-virtual {p1, v0}, Landroid/service/timezone/TimeZoneProviderEvent;->isEquivalentTo(Landroid/service/timezone/TimeZoneProviderEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    :cond_a
    nop

    invoke-virtual {p1}, Landroid/service/timezone/TimeZoneProviderEvent;->getCreationElapsedMillis()J

    move-result-wide v2

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;

    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderEvent;->getCreationElapsedMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Landroid/service/timezone/TimeZoneProviderService;->mEventFilteringAgeThresholdMillis:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    return v1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLastEventSent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/timezone/TimeZoneProviderService;->mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method synthetic lambda$reportPermanentFailure$2$android-service-timezone-TimeZoneProviderService(Ljava/lang/Throwable;)V
    .registers 7

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderService;->mManager:Landroid/service/timezone/ITimeZoneProviderManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_27

    if-eqz v1, :cond_25

    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Landroid/service/timezone/TimeZoneProviderEvent;->createPermanentFailureEvent(JLjava/lang/String;)Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/service/timezone/TimeZoneProviderService;->shouldSendEvent(Landroid/service/timezone/TimeZoneProviderEvent;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v1, v3}, Landroid/service/timezone/ITimeZoneProviderManager;->onTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V

    iput-object v3, p0, Landroid/service/timezone/TimeZoneProviderService;->mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_1e} :catch_1f
    .catchall {:try_start_7 .. :try_end_1e} :catchall_27

    :cond_1e
    goto :goto_25

    :catch_1f
    move-exception v2

    :try_start_20
    const-string v3, "TimeZoneProviderService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_25
    :goto_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw v1
.end method

.method synthetic lambda$reportSuggestion$0$android-service-timezone-TimeZoneProviderService(Landroid/service/timezone/TimeZoneProviderSuggestion;)V
    .registers 6

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderService;->mManager:Landroid/service/timezone/ITimeZoneProviderManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_23

    if-eqz v1, :cond_21

    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Landroid/service/timezone/TimeZoneProviderEvent;->createSuggestionEvent(JLandroid/service/timezone/TimeZoneProviderSuggestion;)Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/service/timezone/TimeZoneProviderService;->shouldSendEvent(Landroid/service/timezone/TimeZoneProviderEvent;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v1, v2}, Landroid/service/timezone/ITimeZoneProviderManager;->onTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V

    iput-object v2, p0, Landroid/service/timezone/TimeZoneProviderService;->mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_1a} :catch_1b
    .catchall {:try_start_7 .. :try_end_1a} :catchall_23

    :cond_1a
    goto :goto_21

    :catch_1b
    move-exception v2

    :try_start_1c
    const-string v3, "TimeZoneProviderService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_23

    throw v1
.end method

.method synthetic lambda$reportUncertain$1$android-service-timezone-TimeZoneProviderService()V
    .registers 5

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/service/timezone/TimeZoneProviderService;->mManager:Landroid/service/timezone/ITimeZoneProviderManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_23

    if-eqz v1, :cond_21

    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/service/timezone/TimeZoneProviderEvent;->createUncertainEvent(J)Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/service/timezone/TimeZoneProviderService;->shouldSendEvent(Landroid/service/timezone/TimeZoneProviderEvent;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v1, v2}, Landroid/service/timezone/ITimeZoneProviderManager;->onTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V

    iput-object v2, p0, Landroid/service/timezone/TimeZoneProviderService;->mLastEventSent:Landroid/service/timezone/TimeZoneProviderEvent;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_1a} :catch_1b
    .catchall {:try_start_7 .. :try_end_1a} :catchall_23

    :cond_1a
    goto :goto_21

    :catch_1b
    move-exception v2

    :try_start_1c
    const-string v3, "TimeZoneProviderService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_23

    throw v1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mWrapper:Landroid/service/timezone/TimeZoneProviderService$TimeZoneProviderServiceWrapper;

    return-object v0
.end method

.method public abstract onStartUpdates(J)V
.end method

.method public abstract onStopUpdates()V
.end method

.method public final reportPermanentFailure(Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda2;-><init>(Landroid/service/timezone/TimeZoneProviderService;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final reportSuggestion(Landroid/service/timezone/TimeZoneProviderSuggestion;)V
    .registers 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda0;-><init>(Landroid/service/timezone/TimeZoneProviderService;Landroid/service/timezone/TimeZoneProviderSuggestion;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final reportUncertain()V
    .registers 3

    iget-object v0, p0, Landroid/service/timezone/TimeZoneProviderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/service/timezone/TimeZoneProviderService$$ExternalSyntheticLambda1;-><init>(Landroid/service/timezone/TimeZoneProviderService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
