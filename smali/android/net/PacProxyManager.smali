# classes2.dex

.class public Landroid/net/PacProxyManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;,
        Landroid/net/PacProxyManager$PacProxyInstalledListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/PacProxyManager$PacProxyInstalledListener;",
            "Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/net/IPacProxyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/IPacProxyManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/PacProxyManager;->mListenerMap:Ljava/util/HashMap;

    const-string v0, "missing IPacProxyManager"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/net/PacProxyManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/PacProxyManager;->mService:Landroid/net/IPacProxyManager;

    return-void
.end method


# virtual methods
.method public addPacProxyInstalledListener(Ljava/util/concurrent/Executor;Landroid/net/PacProxyManager$PacProxyInstalledListener;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Landroid/net/PacProxyManager;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_23

    :try_start_3
    new-instance v1, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;-><init>(Landroid/net/PacProxyManager;Ljava/util/concurrent/Executor;Landroid/net/PacProxyManager$PacProxyInstalledListener;)V

    iget-object v2, p0, Landroid/net/PacProxyManager;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_18

    iget-object v2, p0, Landroid/net/PacProxyManager;->mService:Landroid/net/IPacProxyManager;

    invoke-interface {v2, v1}, Landroid/net/IPacProxyManager;->addListener(Landroid/net/IPacProxyInstalledListener;)V

    monitor-exit v0

    nop

    return-void

    :cond_18
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Listener is already added."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    :try_start_22
    throw v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_23} :catch_23

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removePacProxyInstalledListener(Landroid/net/PacProxyManager$PacProxyInstalledListener;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/net/PacProxyManager;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_1a

    :try_start_3
    iget-object v1, p0, Landroid/net/PacProxyManager;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/PacProxyManager$PacProxyInstalledListenerProxy;

    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    iget-object v2, p0, Landroid/net/PacProxyManager;->mService:Landroid/net/IPacProxyManager;

    invoke-interface {v2, v1}, Landroid/net/IPacProxyManager;->removeListener(Landroid/net/IPacProxyInstalledListener;)V

    monitor-exit v0

    nop

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    :try_start_19
    throw v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1a} :catch_1a

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/net/PacProxyManager;->mService:Landroid/net/IPacProxyManager;

    invoke-interface {v0, p1}, Landroid/net/IPacProxyManager;->setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
