# classes2.dex

.class Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;
.super Landroid/net/INetworkScoreCache$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkScoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkScoreCallbackProxy"
.end annotation


# instance fields
.field private final mCallback:Landroid/net/NetworkScoreManager$NetworkScoreCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Landroid/net/NetworkScoreManager;


# direct methods
.method constructor <init>(Landroid/net/NetworkScoreManager;Ljava/util/concurrent/Executor;Landroid/net/NetworkScoreManager$NetworkScoreCallback;)V
    .registers 4

    iput-object p1, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->this$0:Landroid/net/NetworkScoreManager;

    invoke-direct {p0}, Landroid/net/INetworkScoreCache$Stub;-><init>()V

    iput-object p2, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mCallback:Landroid/net/NetworkScoreManager$NetworkScoreCallback;

    return-void
.end method


# virtual methods
.method public clearScores()V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method synthetic lambda$clearScores$1$android-net-NetworkScoreManager$NetworkScoreCallbackProxy()V
    .registers 2

    iget-object v0, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mCallback:Landroid/net/NetworkScoreManager$NetworkScoreCallback;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager$NetworkScoreCallback;->onScoresInvalidated()V

    return-void
.end method

.method synthetic lambda$updateScores$0$android-net-NetworkScoreManager$NetworkScoreCallbackProxy(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mCallback:Landroid/net/NetworkScoreManager$NetworkScoreCallback;

    invoke-virtual {v0, p1}, Landroid/net/NetworkScoreManager$NetworkScoreCallback;->onScoresUpdated(Ljava/util/Collection;)V

    return-void
.end method

.method public updateScores(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/NetworkScoreManager$NetworkScoreCallbackProxy;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
