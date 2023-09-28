# classes3.dex

.class Landroid/telephony/ims/stub/ImsUtImplBase$1;
.super Lcom/android/ims/internal/IImsUt$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsUtImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mUtListener:Landroid/telephony/ims/ImsUtListener;

.field final synthetic this$0:Landroid/telephony/ims/stub/ImsUtImplBase;


# direct methods
.method constructor <init>(Landroid/telephony/ims/stub/ImsUtImplBase;)V
    .registers 3

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsUt$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-static {v1}, Landroid/telephony/ims/stub/ImsUtImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsUtImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_12} :catch_14
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsUtImplBase Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsUtImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda16;-><init>(Ljava/util/function/Supplier;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-static {v1}, Landroid/telephony/ims/stub/ImsUtImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsUtImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    :try_start_f
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_13
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_13} :catch_14
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_13} :catch_14

    return-object v1

    :catch_14
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsUtImplBase Binder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsUtImplBase"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/RemoteException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic lambda$executeMethodAsync$20(Ljava/lang/Runnable;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$executeMethodAsyncForResult$21(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string v1, "close"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$close$0$android-telephony-ims-stub-ImsUtImplBase$1()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->close()V

    return-void
.end method

.method synthetic lambda$queryCLIP$5$android-telephony-ims-stub-ImsUtImplBase$1()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCLIP()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$queryCLIR$4$android-telephony-ims-stub-ImsUtImplBase$1()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCLIR()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$queryCOLP$7$android-telephony-ims-stub-ImsUtImplBase$1()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCOLP()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$queryCOLR$6$android-telephony-ims-stub-ImsUtImplBase$1()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCOLR()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$queryCallBarring$1$android-telephony-ims-stub-ImsUtImplBase$1(I)Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCallBarring(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$queryCallBarringForServiceClass$17$android-telephony-ims-stub-ImsUtImplBase$1(II)Ljava/lang/Integer;
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCallBarringForServiceClass(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$queryCallForward$2$android-telephony-ims-stub-ImsUtImplBase$1(ILjava/lang/String;)Ljava/lang/Integer;
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCallForward(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$queryCallWaiting$3$android-telephony-ims-stub-ImsUtImplBase$1()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCallWaiting()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$setListener$16$android-telephony-ims-stub-ImsUtImplBase$1(Lcom/android/ims/internal/IImsUtListener;)V
    .registers 6

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    const/4 v1, 0x0

    const-string v2, "ImsUtImplBase"

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/telephony/ims/ImsUtListener;->getListenerInterface()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsUtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "setListener: discarding dead Binder"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    :cond_1d
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    if-eqz v0, :cond_36

    if-eqz p1, :cond_36

    invoke-virtual {v0}, Landroid/telephony/ims/ImsUtListener;->getListenerInterface()Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsUtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/ims/internal/IImsUtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    return-void

    :cond_36
    if-nez p1, :cond_3b

    iput-object v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    goto :goto_56

    :cond_3b
    if-eqz p1, :cond_49

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    if-nez v0, :cond_49

    new-instance v0, Landroid/telephony/ims/ImsUtListener;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsUtListener;-><init>(Lcom/android/ims/internal/IImsUtListener;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    goto :goto_56

    :cond_49
    const-string/jumbo v0, "setListener is being called when there is already an active listener"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/telephony/ims/ImsUtListener;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsUtListener;-><init>(Lcom/android/ims/internal/IImsUtListener;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    :goto_56
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->mUtListener:Landroid/telephony/ims/ImsUtListener;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase;->setListener(Landroid/telephony/ims/ImsUtListener;)V

    return-void
.end method

.method synthetic lambda$transact$8$android-telephony-ims-stub-ImsUtImplBase$1(Landroid/os/Bundle;)Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->transact(Landroid/os/Bundle;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$updateCLIP$13$android-telephony-ims-stub-ImsUtImplBase$1(Z)Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCLIP(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$updateCLIR$12$android-telephony-ims-stub-ImsUtImplBase$1(I)Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCLIR(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$updateCOLP$15$android-telephony-ims-stub-ImsUtImplBase$1(Z)Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCOLP(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$updateCOLR$14$android-telephony-ims-stub-ImsUtImplBase$1(I)Ljava/lang/Integer;
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCOLR(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$updateCallBarring$9$android-telephony-ims-stub-ImsUtImplBase$1(II[Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCallBarring(II[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$updateCallBarringForServiceClass$18$android-telephony-ims-stub-ImsUtImplBase$1(II[Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 6

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCallBarringForServiceClass(II[Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$updateCallBarringWithPassword$19$android-telephony-ims-stub-ImsUtImplBase$1(II[Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;
    .registers 12

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$updateCallForward$10$android-telephony-ims-stub-ImsUtImplBase$1(IILjava/lang/String;II)Ljava/lang/Integer;
    .registers 12

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCallForward(IILjava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$updateCallWaiting$11$android-telephony-ims-stub-ImsUtImplBase$1(ZI)Ljava/lang/Integer;
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase;->updateCallWaiting(ZI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public queryCFForServiceClass(ILjava/lang/String;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsUtImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsUtImplBase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsUtImplBase;->queryCFForServiceClass(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public queryCLIP()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string/jumbo v1, "queryCLIP"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public queryCLIR()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string/jumbo v1, "queryCLIR"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public queryCOLP()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string/jumbo v1, "queryCOLP"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public queryCOLR()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda18;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string/jumbo v1, "queryCOLR"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public queryCallBarring(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;I)V

    const-string/jumbo v1, "queryCallBarring"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public queryCallBarringForServiceClass(II)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;II)V

    const-string/jumbo v1, "queryCallBarringForServiceClass"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;ILjava/lang/String;)V

    const-string/jumbo v1, "queryCallForward"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public queryCallWaiting()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda17;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;)V

    const-string/jumbo v1, "queryCallWaiting"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setListener(Lcom/android/ims/internal/IImsUtListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda19;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;Lcom/android/ims/internal/IImsUtListener;)V

    const-string/jumbo v1, "setListener"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda20;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;Landroid/os/Bundle;)V

    const-string/jumbo v1, "transact"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public updateCLIP(Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;Z)V

    const-string/jumbo v1, "updateCLIP"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public updateCLIR(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;I)V

    const-string/jumbo v1, "updateCLIR"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public updateCOLP(Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;Z)V

    const-string/jumbo v1, "updateCOLP"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public updateCOLR(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;I)V

    const-string/jumbo v1, "updateCOLR"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;II[Ljava/lang/String;)V

    const-string/jumbo v1, "updateCallBarring"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public updateCallBarringForServiceClass(II[Ljava/lang/String;I)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v6, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda21;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda21;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;II[Ljava/lang/String;I)V

    const-string/jumbo v0, "updateCallBarringForServiceClass"

    invoke-direct {p0, v6, v0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v7, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda3;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;II[Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v0, "updateCallBarringWithPassword"

    invoke-direct {p0, v7, v0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v7, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;IILjava/lang/String;II)V

    const-string/jumbo v0, "updateCallForward"

    invoke-direct {p0, v7, v0}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public updateCallWaiting(ZI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsUtImplBase$1$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/stub/ImsUtImplBase$1;ZI)V

    const-string/jumbo v1, "updateCallWaiting"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsUtImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
