# classes.dex

.class public Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;
.super Landroid/hardware/camera2/CameraInjectionSession;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraInjectionSessionImpl"


# instance fields
.field private final mCallback:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;

.field private final mInjectionStatusCallback:Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;

.field private final mInterfaceLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$rS7LgMn0Lln0LD7SkXkB2FaVZZI(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->notifyError(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmInjectionStatusCallback(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;)Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionStatusCallback:Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;

    return-object p0
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;Ljava/util/concurrent/Executor;)V
    .registers 4

    invoke-direct {p0}, Landroid/hardware/camera2/CameraInjectionSession;-><init>()V

    new-instance v0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;-><init>(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mCallback:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionStatusCallback:Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private notifyError(I)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionStatusCallback:Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;->onInjectionError(I)V

    :cond_9
    return-void
.end method

.method private scheduleNotifyError(I)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, p0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1f

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "CameraInjectionSessionImpl"

    const-string v2, "CameraInjectionSessionImpl died unexpectedly"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;

    if-nez v1, :cond_10

    monitor-exit v0

    return-void

    :cond_10
    new-instance v1, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$1;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$1;-><init>(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2a

    :try_start_19
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_24

    :try_start_1e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_24
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v4

    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public close()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;

    if-eqz v1, :cond_17

    invoke-interface {v1}, Landroid/hardware/camera2/ICameraInjectionSession;->stopInjection()V

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;

    invoke-interface {v1}, Landroid/hardware/camera2/ICameraInjectionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_17} :catch_1a
    .catchall {:try_start_3 .. :try_end_17} :catchall_18

    :cond_17
    goto :goto_1b

    :catchall_18
    move-exception v1

    goto :goto_1d

    :catch_1a
    move-exception v1

    :goto_1b
    :try_start_1b
    monitor-exit v0

    return-void

    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_18

    throw v1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->close()V
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

.method public getCallback()Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mCallback:Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$CameraInjectionCallback;

    return-object v0
.end method

.method public onInjectionError(I)V
    .registers 8

    const-string v0, "CameraInjectionSessionImpl"

    const-string v1, "Injection session error received, code %d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_18
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;

    if-nez v1, :cond_1e

    monitor-exit v0

    return-void

    :cond_1e
    packed-switch p1, :pswitch_data_50

    const-string v1, "CameraInjectionSessionImpl"

    goto :goto_31

    :pswitch_24  #0x2
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->scheduleNotifyError(I)V

    goto :goto_4a

    :pswitch_29  #0x1
    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->scheduleNotifyError(I)V

    goto :goto_4a

    :pswitch_2d  #0x0
    invoke-direct {p0, v5}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->scheduleNotifyError(I)V

    goto :goto_4a

    :goto_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown error from injection session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->scheduleNotifyError(I)V

    :goto_4a
    monitor-exit v0

    return-void

    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_18 .. :try_end_4e} :catchall_4c

    throw v1

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_2d  #00000000
        :pswitch_29  #00000001
        :pswitch_24  #00000002
    .end packed-switch
.end method

.method public setRemoteInjectionSession(Landroid/hardware/camera2/ICameraInjectionSession;)V
    .registers 9

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_12

    :try_start_6
    const-string v2, "CameraInjectionSessionImpl"

    const-string v3, "The camera injection session has encountered a serious error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->scheduleNotifyError(I)V

    monitor-exit v0

    return-void

    :cond_12
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mInjectionSession:Landroid/hardware/camera2/ICameraInjectionSession;

    invoke-interface {p1}, Landroid/hardware/camera2/ICameraInjectionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_26

    const-string v3, "CameraInjectionSessionImpl"

    const-string v4, "The camera injection session has encountered a serious error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->scheduleNotifyError(I)V

    monitor-exit v0

    return-void

    :cond_26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_4c

    :try_start_2a
    invoke-interface {v2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$2;

    invoke-direct {v6, p0}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_37} :catch_3d
    .catchall {:try_start_2a .. :try_end_37} :catchall_3b

    :try_start_37
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_4c

    goto :goto_44

    :catchall_3b
    move-exception v1

    goto :goto_47

    :catch_3d
    move-exception v5

    :try_start_3e
    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraInjectionSessionImpl;->scheduleNotifyError(I)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3b

    :try_start_41
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_44
    nop

    monitor-exit v0

    return-void

    :goto_47
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v1

    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_4c

    throw v1
.end method
