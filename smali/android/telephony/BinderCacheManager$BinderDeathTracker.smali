# classes3.dex

.class Landroid/telephony/BinderCacheManager$BinderDeathTracker;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/BinderCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinderDeathTracker"
.end annotation


# instance fields
.field private final mConnection:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/telephony/BinderCacheManager;


# direct methods
.method constructor <init>(Landroid/telephony/BinderCacheManager;Landroid/os/IInterface;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->this$0:Landroid/telephony/BinderCacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    iput-object p2, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mConnection:Landroid/os/IInterface;

    :try_start_e
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17

    goto :goto_18

    :catch_17
    move-exception p1

    :goto_18
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Object;Ljava/lang/Runnable;)Z
    .registers 5

    iget-object v0, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->isAlive()Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_c
    iget-object v1, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public binderDied()V
    .registers 5

    iget-object v0, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_29

    :try_start_13
    iget-object v2, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mConnection:Landroid/os/IInterface;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1d
    .catch Ljava/util/NoSuchElementException; {:try_start_13 .. :try_end_1d} :catch_1e
    .catchall {:try_start_13 .. :try_end_1d} :catchall_29

    goto :goto_1f

    :catch_1e
    move-exception v2

    :goto_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_29

    new-instance v0, Landroid/telephony/BinderCacheManager$BinderDeathTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/telephony/BinderCacheManager$BinderDeathTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public getConnection()Landroid/os/IInterface;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mConnection:Landroid/os/IInterface;

    return-object v0
.end method

.method public isAlive()Z
    .registers 2

    iget-object v0, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mConnection:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public removeListener(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/BinderCacheManager$BinderDeathTracker;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
