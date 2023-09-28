# classes3.dex

.class Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;
.super Lcom/android/ims/internal/IImsCallSession$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsCallSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;


# direct methods
.method constructor <init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;-><init>()V

    return-void
.end method

.method private executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-static {v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_3a

    :catch_13
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsCallSessionImplBase Binder - "

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

    const-string v2, "ImsCallSessionImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3a
    return-void
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

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Supplier;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-static {v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)Ljava/util/concurrent/Executor;

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

    const-string v3, "ImsCallSessionImplBase Binder - "

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

    const-string v3, "ImsCallSessionImplBase"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method static synthetic lambda$executeMethodAsync$35(Ljava/lang/Runnable;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$executeMethodAsyncForResult$36(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 5

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    const-string v1, "accept"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .registers 3

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda33;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "close"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V
    .registers 4

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Lcom/android/ims/internal/IImsCallSession;)V

    const-string v1, "consultativeTransfer"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda32;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;)V

    const-string v1, "deflect"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;[Ljava/lang/String;)V

    const-string v1, "extendToConference"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public getCallId()Ljava/lang/String;
    .registers 3

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "getCallId"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 3

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda36;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda36;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "getCallProfile"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 3

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "getLocalCallProfile"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda18;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;)V

    const-string v1, "getProperty"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .registers 3

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda29;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "getRemoteCallProfile"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsCallProfile;

    return-object v0
.end method

.method public getState()I
    .registers 3

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "getState"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .registers 3

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda23;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string v1, "getVideoCallProvider"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/IImsVideoCallProvider;

    return-object v0
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    const-string/jumbo v1, "hold"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda26;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;[Ljava/lang/String;)V

    const-string/jumbo v1, "inviteParticipants"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public isInCall()Z
    .registers 3

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda28;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string/jumbo v1, "isInCall"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isMultiparty()Z
    .registers 3

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string/jumbo v1, "isMultiparty"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$accept$12$android-telephony-ims-stub-ImsCallSessionImplBase$1(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method synthetic lambda$close$0$android-telephony-ims-stub-ImsCallSessionImplBase$1()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->close()V

    return-void
.end method

.method synthetic lambda$consultativeTransfer$16$android-telephony-ims-stub-ImsCallSessionImplBase$1(Lcom/android/ims/internal/IImsCallSession;)V
    .registers 4

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;-><init>()V

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setServiceImpl(Lcom/android/ims/internal/IImsCallSession;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v1, v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->transfer(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V

    return-void
.end method

.method synthetic lambda$deflect$13$android-telephony-ims-stub-ImsCallSessionImplBase$1(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->deflect(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$extendToConference$22$android-telephony-ims-stub-ImsCallSessionImplBase$1([Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->extendToConference([Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$getCallId$1$android-telephony-ims-stub-ImsCallSessionImplBase$1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getCallId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getCallProfile$2$android-telephony-ims-stub-ImsCallSessionImplBase$1()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getLocalCallProfile$3$android-telephony-ims-stub-ImsCallSessionImplBase$1()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getProperty$5$android-telephony-ims-stub-ImsCallSessionImplBase$1(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getRemoteCallProfile$4$android-telephony-ims-stub-ImsCallSessionImplBase$1()Landroid/telephony/ims/ImsCallProfile;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getState$6$android-telephony-ims-stub-ImsCallSessionImplBase$1()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getVideoCallProvider$29$android-telephony-ims-stub-ImsCallSessionImplBase$1()Lcom/android/ims/internal/IImsVideoCallProvider;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$hold$18$android-telephony-ims-stub-ImsCallSessionImplBase$1(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method synthetic lambda$inviteParticipants$23$android-telephony-ims-stub-ImsCallSessionImplBase$1([Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->inviteParticipants([Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$isInCall$7$android-telephony-ims-stub-ImsCallSessionImplBase$1()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->isInCall()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$isMultiparty$30$android-telephony-ims-stub-ImsCallSessionImplBase$1()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->isMultiparty()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$merge$20$android-telephony-ims-stub-ImsCallSessionImplBase$1()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->merge()V

    return-void
.end method

.method synthetic lambda$reject$14$android-telephony-ims-stub-ImsCallSessionImplBase$1(I)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->reject(I)V

    return-void
.end method

.method synthetic lambda$removeParticipants$24$android-telephony-ims-stub-ImsCallSessionImplBase$1([Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->removeParticipants([Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$resume$19$android-telephony-ims-stub-ImsCallSessionImplBase$1(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method synthetic lambda$sendDtmf$25$android-telephony-ims-stub-ImsCallSessionImplBase$1(CLandroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendDtmf(CLandroid/os/Message;)V

    return-void
.end method

.method synthetic lambda$sendRtpHeaderExtensions$34$android-telephony-ims-stub-ImsCallSessionImplBase$1(Ljava/util/List;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendRtpHeaderExtensions(Ljava/util/Set;)V

    return-void
.end method

.method synthetic lambda$sendRttMessage$33$android-telephony-ims-stub-ImsCallSessionImplBase$1(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendRttMessage(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$sendRttModifyRequest$31$android-telephony-ims-stub-ImsCallSessionImplBase$1(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method synthetic lambda$sendRttModifyResponse$32$android-telephony-ims-stub-ImsCallSessionImplBase$1(Z)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendRttModifyResponse(Z)V

    return-void
.end method

.method synthetic lambda$sendUssd$28$android-telephony-ims-stub-ImsCallSessionImplBase$1(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->sendUssd(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setListener$8$android-telephony-ims-stub-ImsCallSessionImplBase$1(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    new-instance v1, Landroid/telephony/ims/ImsCallSessionListener;

    invoke-direct {v1, p1}, Landroid/telephony/ims/ImsCallSessionListener;-><init>(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setListener(Landroid/telephony/ims/ImsCallSessionListener;)V

    return-void
.end method

.method synthetic lambda$setMute$9$android-telephony-ims-stub-ImsCallSessionImplBase$1(Z)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->setMute(Z)V

    return-void
.end method

.method synthetic lambda$start$10$android-telephony-ims-stub-ImsCallSessionImplBase$1(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method synthetic lambda$startConference$11$android-telephony-ims-stub-ImsCallSessionImplBase$1([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method synthetic lambda$startDtmf$26$android-telephony-ims-stub-ImsCallSessionImplBase$1(C)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->startDtmf(C)V

    return-void
.end method

.method synthetic lambda$stopDtmf$27$android-telephony-ims-stub-ImsCallSessionImplBase$1()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->stopDtmf()V

    return-void
.end method

.method synthetic lambda$terminate$17$android-telephony-ims-stub-ImsCallSessionImplBase$1(I)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->terminate(I)V

    return-void
.end method

.method synthetic lambda$transfer$15$android-telephony-ims-stub-ImsCallSessionImplBase$1(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->transfer(Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic lambda$update$21$android-telephony-ims-stub-ImsCallSessionImplBase$1(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->this$0:Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method public merge()V
    .registers 3

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string/jumbo v1, "merge"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public reject(I)V
    .registers 4

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda25;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;I)V

    const-string/jumbo v1, "reject"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;[Ljava/lang/String;)V

    const-string/jumbo v1, "removeParticipants"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 4

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    const-string/jumbo v1, "resume"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .registers 5

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda22;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;CLandroid/os/Message;)V

    const-string/jumbo v1, "sendDtmf"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public sendRtpHeaderExtensions(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda20;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/util/List;)V

    const-string/jumbo v1, "sendRtpHeaderExtensions"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda24;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;)V

    const-string/jumbo v1, "sendRttMessage"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda17;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Landroid/telephony/ims/ImsCallProfile;)V

    const-string/jumbo v1, "sendRttModifyRequest"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .registers 4

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda30;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Z)V

    const-string/jumbo v1, "sendRttModifyResponse"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda27;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;)V

    const-string/jumbo v1, "sendUssd"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .registers 4

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda35;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Landroid/telephony/ims/aidl/IImsCallSessionListener;)V

    const-string/jumbo v1, "setListener"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public setMute(Z)V
    .registers 4

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda21;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Z)V

    const-string/jumbo v1, "setMute"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 5

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    const-string/jumbo v1, "start"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda31;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;[Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    const-string/jumbo v1, "startConference"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public startDtmf(C)V
    .registers 4

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda19;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;C)V

    const-string/jumbo v1, "startDtmf"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public stopDtmf()V
    .registers 3

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;)V

    const-string/jumbo v1, "stopDtmf"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public terminate(I)V
    .registers 4

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;I)V

    const-string/jumbo v1, "terminate"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public transfer(Ljava/lang/String;Z)V
    .registers 5

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;Ljava/lang/String;Z)V

    const-string/jumbo v1, "transfer"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 5

    new-instance v0, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1$$ExternalSyntheticLambda34;-><init>(Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    const-string/jumbo v1, "update"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase$1;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
