# classes.dex

.class public final Landroid/app/smartspace/SmartspaceSession;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/SmartspaceSession$CallbackWrapper;,
        Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mInterface:Landroid/app/smartspace/ISmartspaceManager;

.field private final mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mRegisteredCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;",
            "Landroid/app/smartspace/SmartspaceSession$CallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/app/smartspace/SmartspaceSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/smartspace/SmartspaceSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/smartspace/SmartspaceConfig;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mToken:Landroid/os/IBinder;

    const-string/jumbo v1, "smartspace"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/smartspace/ISmartspaceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/smartspace/ISmartspaceManager;

    move-result-object v2

    iput-object v2, p0, Landroid/app/smartspace/SmartspaceSession;->mInterface:Landroid/app/smartspace/ISmartspaceManager;

    new-instance v3, Landroid/app/smartspace/SmartspaceSessionId;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/app/smartspace/SmartspaceSessionId;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iput-object v3, p0, Landroid/app/smartspace/SmartspaceSession;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    :try_start_5a
    invoke-interface {v2, p2, v3, v0}, Landroid/app/smartspace/ISmartspaceManager;->createSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_69

    :catch_5e
    move-exception v0

    sget-object v2, Landroid/app/smartspace/SmartspaceSession;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create Smartspace session"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_69
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "SmartspaceSession.close"

    invoke-virtual {v0, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method private destroy()V
    .registers 4

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :try_start_e
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mInterface:Landroid/app/smartspace/ISmartspaceManager;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceSession;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    invoke-interface {v0, v1}, Landroid/app/smartspace/ISmartspaceManager;->destroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    goto :goto_21

    :catch_16
    move-exception v0

    sget-object v1, Landroid/app/smartspace/SmartspaceSession;->TAG:Ljava/lang/String;

    const-string v2, "Failed to notify Smartspace target event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_21
    nop

    return-void

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addOnTargetsAvailableListener(Ljava/util/concurrent/Executor;Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;)V
    .registers 6

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    :cond_11
    :try_start_11
    new-instance v0, Landroid/app/smartspace/SmartspaceSession$CallbackWrapper;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/app/smartspace/SmartspaceSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Landroid/app/smartspace/SmartspaceSession$$ExternalSyntheticLambda0;-><init>(Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;)V

    invoke-direct {v0, p1, v1}, Landroid/app/smartspace/SmartspaceSession$CallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceSession;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceSession;->mInterface:Landroid/app/smartspace/ISmartspaceManager;

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceSession;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    invoke-interface {v1, v2, v0}, Landroid/app/smartspace/ISmartspaceManager;->registerSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceSession;->mInterface:Landroid/app/smartspace/ISmartspaceManager;

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceSession;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    invoke-interface {v1, v2}, Landroid/app/smartspace/ISmartspaceManager;->requestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_31} :catch_32

    goto :goto_3d

    :catch_32
    move-exception v0

    sget-object v1, Landroid/app/smartspace/SmartspaceSession;->TAG:Ljava/lang/String;

    const-string v2, "Failed to register for smartspace updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_3d
    return-void

    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 2

    :try_start_0
    invoke-direct {p0}, Landroid/app/smartspace/SmartspaceSession;->destroy()V

    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceSession;->finalize()V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    goto :goto_b

    :catchall_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    return-void
.end method

.method protected finalize()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_7
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Landroid/app/smartspace/SmartspaceSession;->destroy()V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_1c

    :cond_12
    :try_start_12
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_1b

    :catchall_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    nop

    :goto_1b
    return-void

    :catchall_1c
    move-exception v0

    :try_start_1d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_25

    :catchall_21
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_25
    throw v0
.end method

.method public notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .registers 5

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1c

    :try_start_8
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mInterface:Landroid/app/smartspace/ISmartspaceManager;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceSession;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    invoke-interface {v0, v1, p1}, Landroid/app/smartspace/ISmartspaceManager;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_1b

    :catch_10
    move-exception v0

    sget-object v1, Landroid/app/smartspace/SmartspaceSession;->TAG:Ljava/lang/String;

    const-string v2, "Failed to notify event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_1b
    return-void

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeOnTargetsAvailableListener(Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;)V
    .registers 5

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mRegisteredCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/SmartspaceSession$CallbackWrapper;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceSession;->mInterface:Landroid/app/smartspace/ISmartspaceManager;

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceSession;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    invoke-interface {v1, v2, v0}, Landroid/app/smartspace/ISmartspaceManager;->unregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_20} :catch_21

    goto :goto_2c

    :catch_21
    move-exception v0

    sget-object v1, Landroid/app/smartspace/SmartspaceSession;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unregister for smartspace updates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_2c
    return-void

    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestSmartspaceUpdate()V
    .registers 4

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1c

    :try_start_8
    iget-object v0, p0, Landroid/app/smartspace/SmartspaceSession;->mInterface:Landroid/app/smartspace/ISmartspaceManager;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceSession;->mSessionId:Landroid/app/smartspace/SmartspaceSessionId;

    invoke-interface {v0, v1}, Landroid/app/smartspace/ISmartspaceManager;->requestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_1b

    :catch_10
    move-exception v0

    sget-object v1, Landroid/app/smartspace/SmartspaceSession;->TAG:Ljava/lang/String;

    const-string v2, "Failed to request update."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_1b
    return-void

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
