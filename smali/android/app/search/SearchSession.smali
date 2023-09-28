# classes.dex

.class public final Landroid/app/search/SearchSession;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/search/SearchSession$CallbackWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mInterface:Landroid/app/search/ISearchUiManager;

.field private final mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSessionId:Landroid/app/search/SearchSessionId;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/app/search/SearchSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/search/SearchSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/search/SearchContext;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/app/search/SearchSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/search/SearchSession;->mToken:Landroid/os/IBinder;

    const-string/jumbo v1, "search_ui"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/search/ISearchUiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/search/ISearchUiManager;

    move-result-object v2

    iput-object v2, p0, Landroid/app/search/SearchSession;->mInterface:Landroid/app/search/ISearchUiManager;

    new-instance v3, Landroid/app/search/SearchSessionId;

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

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/app/search/SearchSessionId;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Landroid/app/search/SearchSession;->mSessionId:Landroid/app/search/SearchSessionId;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/app/search/SearchContext;->setPackageName(Ljava/lang/String;)V

    :try_start_5a
    invoke-interface {v2, p2, v3, v0}, Landroid/app/search/ISearchUiManager;->createSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_69

    :catch_5e
    move-exception v0

    sget-object v2, Landroid/app/search/SearchSession;->TAG:Ljava/lang/String;

    const-string v3, "Failed to search session"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_69
    iget-object v0, p0, Landroid/app/search/SearchSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v2, "SearchSession.close"

    invoke-virtual {v0, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Landroid/app/search/SearchSession;->finalize()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    return-void
.end method

.method public destroy()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/search/SearchSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Landroid/app/search/SearchSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :try_start_e
    iget-object v0, p0, Landroid/app/search/SearchSession;->mInterface:Landroid/app/search/ISearchUiManager;

    iget-object v1, p0, Landroid/app/search/SearchSession;->mSessionId:Landroid/app/search/SearchSessionId;

    invoke-interface {v0, v1}, Landroid/app/search/ISearchUiManager;->destroySearchSession(Landroid/app/search/SearchSessionId;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    goto :goto_21

    :catch_16
    move-exception v0

    sget-object v1, Landroid/app/search/SearchSession;->TAG:Ljava/lang/String;

    const-string v2, "Failed to notify search target event"

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

.method protected finalize()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/app/search/SearchSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_7
    iget-object v0, p0, Landroid/app/search/SearchSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroid/app/search/SearchSession;->destroy()V
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

.method public notifyEvent(Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V
    .registers 6

    iget-object v0, p0, Landroid/app/search/SearchSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1c

    :try_start_8
    iget-object v0, p0, Landroid/app/search/SearchSession;->mInterface:Landroid/app/search/ISearchUiManager;

    iget-object v1, p0, Landroid/app/search/SearchSession;->mSessionId:Landroid/app/search/SearchSessionId;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/search/ISearchUiManager;->notifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_1b

    :catch_10
    move-exception v0

    sget-object v1, Landroid/app/search/SearchSession;->TAG:Ljava/lang/String;

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

.method public query(Landroid/app/search/Query;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/search/Query;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/app/search/SearchTarget;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/search/SearchSession;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_21

    :try_start_8
    iget-object v0, p0, Landroid/app/search/SearchSession;->mInterface:Landroid/app/search/ISearchUiManager;

    iget-object v1, p0, Landroid/app/search/SearchSession;->mSessionId:Landroid/app/search/SearchSessionId;

    new-instance v2, Landroid/app/search/SearchSession$CallbackWrapper;

    invoke-direct {v2, p2, p3}, Landroid/app/search/SearchSession$CallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1, p1, v2}, Landroid/app/search/ISearchUiManager;->query(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_15

    goto :goto_20

    :catch_15
    move-exception v0

    sget-object v1, Landroid/app/search/SearchSession;->TAG:Ljava/lang/String;

    const-string v2, "Failed to sort targets"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_20
    return-void

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This client has already been destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
