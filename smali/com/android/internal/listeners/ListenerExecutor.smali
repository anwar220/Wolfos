# classes4.dex

.class public interface abstract Lcom/android/internal/listeners/ListenerExecutor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;,
        Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    }
.end annotation


# direct methods
.method public static synthetic lambda$executeSafely$0(Ljava/lang/Object;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v1, :cond_b

    invoke-interface {p2, p0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->operate(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_14
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    const/4 v0, 0x1

    :cond_b
    :goto_b
    invoke-interface {p2, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPostExecute(Z)V

    invoke-interface {p2, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onComplete(Z)V

    goto :goto_22

    :catchall_12
    move-exception v1

    goto :goto_27

    :catch_14
    move-exception v1

    :try_start_15
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_23

    invoke-interface {p2, v1}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onFailure(Ljava/lang/Exception;)V

    if-eqz p3, :cond_b

    invoke-interface {p3, p2, v1}, Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;->onFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V

    goto :goto_b

    :goto_22
    return-void

    :cond_23
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_12

    :goto_27
    invoke-interface {p2, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPostExecute(Z)V

    invoke-interface {p2, v0}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onComplete(Z)V

    throw v1
.end method


# virtual methods
.method public executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T",
            "Listener:Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Supplier<",
            "TT",
            "Listener;",
            ">;",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/android/internal/listeners/ListenerExecutor;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V

    return-void
.end method

.method public executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T",
            "Listener:Ljava/lang/Object;",
            "T",
            "ListenerOperation::Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;>(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Supplier<",
            "TT",
            "Listener;",
            ">;TT",
            "ListenerOperation;",
            "Lcom/android/internal/listeners/ListenerExecutor$FailureCallback<",
            "TT",
            "ListenerOperation;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_d
    invoke-interface {p3}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPreExecute()V

    const/4 v2, 0x1

    new-instance v4, Lcom/android/internal/listeners/ListenerExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, p2, p3, p4}, Lcom/android/internal/listeners/ListenerExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V

    invoke-interface {p1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_25

    const/4 v1, 0x1

    if-nez v1, :cond_24

    if-eqz v2, :cond_21

    invoke-interface {p3, v3}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPostExecute(Z)V

    :cond_21
    invoke-interface {p3, v3}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onComplete(Z)V

    :cond_24
    return-void

    :catchall_25
    move-exception v4

    if-nez v1, :cond_30

    if-eqz v2, :cond_2d

    invoke-interface {p3, v3}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onPostExecute(Z)V

    :cond_2d
    invoke-interface {p3, v3}, Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;->onComplete(Z)V

    :cond_30
    throw v4
.end method
