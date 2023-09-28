# classes4.dex

.class public abstract Lcom/android/internal/listeners/ListenerTransportManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TTransport::",
        "Lcom/android/internal/listeners/ListenerTransport<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mRegistrations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/WeakReference<",
            "TTTransport;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_d

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/listeners/ListenerTransportManager;->mRegistrations:Ljava/util/Map;

    goto :goto_14

    :cond_d
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/listeners/ListenerTransportManager;->mRegistrations:Ljava/util/Map;

    :goto_14
    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/Object;Lcom/android/internal/listeners/ListenerTransport;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TTTransport;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/listeners/ListenerTransportManager;->mRegistrations:Ljava/util/Map;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_32

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/listeners/ListenerTransportManager;->mRegistrations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/listeners/ListenerTransport;

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    if-nez v2, :cond_1b

    invoke-virtual {p0, p2}, Lcom/android/internal/listeners/ListenerTransportManager;->registerTransport(Lcom/android/internal/listeners/ListenerTransport;)V

    goto :goto_21

    :cond_1b
    invoke-virtual {p0, p2, v2}, Lcom/android/internal/listeners/ListenerTransportManager;->registerTransport(Lcom/android/internal/listeners/ListenerTransport;Lcom/android/internal/listeners/ListenerTransport;)V

    invoke-interface {v2}, Lcom/android/internal/listeners/ListenerTransport;->unregister()V

    :goto_21
    iget-object v3, p0, Lcom/android/internal/listeners/ListenerTransportManager;->mRegistrations:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit v0

    nop

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_32} :catch_32

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected abstract registerTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTTransport;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected registerTransport(Lcom/android/internal/listeners/ListenerTransport;Lcom/android/internal/listeners/ListenerTransport;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTTransport;TTTransport;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/listeners/ListenerTransportManager;->registerTransport(Lcom/android/internal/listeners/ListenerTransport;)V

    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/internal/listeners/ListenerTransportManager;->unregisterTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_8

    nop

    return-void

    :catch_8
    move-exception v0

    :try_start_9
    invoke-virtual {p0, p1}, Lcom/android/internal/listeners/ListenerTransportManager;->unregisterTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v1

    invoke-virtual {v0, v1}, Landroid/os/RemoteException;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_11
    throw v0
.end method

.method public final removeListener(Ljava/lang/Object;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/listeners/ListenerTransportManager;->mRegistrations:Ljava/util/Map;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_21

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/listeners/ListenerTransportManager;->mRegistrations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/listeners/ListenerTransport;

    if-eqz v2, :cond_1b

    invoke-interface {v2}, Lcom/android/internal/listeners/ListenerTransport;->unregister()V

    invoke-virtual {p0, v2}, Lcom/android/internal/listeners/ListenerTransportManager;->unregisterTransport(Lcom/android/internal/listeners/ListenerTransport;)V

    :cond_1b
    monitor-exit v0

    nop

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    :try_start_20
    throw v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_21} :catch_21

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected abstract unregisterTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTTransport;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
