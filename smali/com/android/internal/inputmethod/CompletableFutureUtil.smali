# classes4.dex

.class public final Lcom/android/internal/inputmethod/CompletableFutureUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanResult(Ljava/util/concurrent/CompletableFuture;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrRethrowErrorInternal(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getIntegerResult(Ljava/util/concurrent/CompletableFuture;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrRethrowErrorInternal(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrRethrowErrorInternal(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getResultOrFalse(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/inputmethod/CancellationGroup;",
            "J)Z"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrNullInternal(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;JLcom/android/internal/inputmethod/CancellationGroup;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public static getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/inputmethod/CancellationGroup;",
            "J)TT;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrNullInternal(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;JLcom/android/internal/inputmethod/CancellationGroup;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getResultOrZero(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/inputmethod/CancellationGroup;",
            "J)I"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrNullInternal(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;JLcom/android/internal/inputmethod/CancellationGroup;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private static getValueOrNullInternal(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;JLcom/android/internal/inputmethod/CancellationGroup;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/android/internal/inputmethod/CancellationGroup;",
            ")TT;"
        }
    .end annotation

    if-eqz p5, :cond_a

    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->tryRegisterFutureOrCancelImmediately(Ljava/util/concurrent/CompletableFuture;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const/4 v1, 0x0

    :goto_c
    const/4 v2, 0x0

    :try_start_d
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p3, p4, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2
    :try_end_13
    .catch Ljava/util/concurrent/CompletionException; {:try_start_d .. :try_end_13} :catch_65
    .catch Ljava/util/concurrent/CancellationException; {:try_start_d .. :try_end_13} :catch_51
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_13} :catch_4e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_13} :catch_3a
    .catchall {:try_start_d .. :try_end_13} :catchall_22

    if-eqz v0, :cond_18

    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    :cond_18
    if-eqz v1, :cond_21

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_21
    return-object v2

    :catchall_22
    move-exception v3

    :try_start_23
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, v4}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->logErrorInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_98

    nop

    if-eqz v0, :cond_30

    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    :cond_30
    if-eqz v1, :cond_39

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_39
    return-object v2

    :catch_3a
    move-exception v3

    :try_start_3b
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->logTimeoutInternal(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_98

    nop

    if-eqz v0, :cond_44

    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    :cond_44
    if-eqz v1, :cond_4d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_4d
    return-object v2

    :catch_4e
    move-exception v2

    const/4 v1, 0x1

    goto :goto_c

    :catch_51
    move-exception v3

    :try_start_52
    invoke-static {p1, p2}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->logCancellationInternal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_98

    nop

    if-eqz v0, :cond_5b

    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    :cond_5b
    if-eqz v1, :cond_64

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_64
    return-object v2

    :catch_65
    move-exception v3

    :try_start_66
    invoke-virtual {v3}, Ljava/util/concurrent/CompletionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/util/concurrent/CancellationException;

    if-eqz v4, :cond_81

    invoke-static {p1, p2}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->logCancellationInternal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_66 .. :try_end_71} :catchall_98

    nop

    if-eqz v0, :cond_77

    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    :cond_77
    if-eqz v1, :cond_80

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_80
    return-object v2

    :cond_81
    :try_start_81
    invoke-virtual {v3}, Ljava/util/concurrent/CompletionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, v4}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->logErrorInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_88
    .catchall {:try_start_81 .. :try_end_88} :catchall_98

    nop

    if-eqz v0, :cond_8e

    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    :cond_8e
    if-eqz v1, :cond_97

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_97
    return-object v2

    :catchall_98
    move-exception v2

    if-eqz v0, :cond_9e

    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    :cond_9e
    if-eqz v1, :cond_a7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_a7
    throw v2
.end method

.method private static getValueOrRethrowErrorInternal(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_5} :catch_14
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_11
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    if-eqz v0, :cond_e

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_e
    return-object v1

    :catchall_f
    move-exception v1

    goto :goto_27

    :catch_11
    move-exception v1

    const/4 v0, 0x1

    goto :goto_1

    :catch_14
    move-exception v1

    :try_start_15
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_f

    :goto_27
    if-eqz v0, :cond_30

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_30
    throw v1
.end method

.method private static logCancellationInternal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_1c

    if-nez p1, :cond_5

    goto :goto_1c

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was cancelled."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    :goto_1c
    return-void
.end method

.method private static logErrorInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_20

    if-nez p1, :cond_5

    goto :goto_20

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was failed with an exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    :goto_20
    return-void
.end method

.method private static logTimeoutInternal(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    if-eqz p0, :cond_26

    if-nez p1, :cond_5

    goto :goto_26

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " didn\'t respond in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msec."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    :goto_26
    return-void
.end method
