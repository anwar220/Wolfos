# classes3.dex

.class Landroid/telephony/ims/ImsService$2;
.super Landroid/telephony/ims/aidl/IImsServiceController$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/ImsService;


# direct methods
.method constructor <init>(Landroid/telephony/ims/ImsService;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;-><init>()V

    return-void
.end method

.method private executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/ImsService;)Ljava/util/concurrent/Executor;

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

    const-string v2, "ImsService Binder - "

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

    const-string v2, "ImsService"

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

    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Supplier;)V

    iget-object v1, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/ImsService;)Ljava/util/concurrent/Executor;

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

    const-string v3, "ImsService Binder - "

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

    const-string v3, "ImsService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method static synthetic lambda$executeMethodAsync$14(Ljava/lang/Runnable;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$executeMethodAsyncForResult$15(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 6

    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/ims/ImsService$2;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    const-string v1, "addFeatureStatusCallback"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsService$2;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public createEmergencyOnlyMmTelFeature(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/telephony/ims/ImsService;->getImsFeature(II)Landroid/telephony/ims/feature/ImsFeature;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/MmTelFeature;

    if-nez v0, :cond_19

    new-instance v1, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/ims/ImsService$2;I)V

    const-string v2, "createEmergencyOnlyMmTelFeature"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/ImsService$2;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/aidl/IImsMmTelFeature;

    return-object v1

    :cond_19
    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    return-object v1
.end method

.method public createMmTelFeature(II)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 6

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/telephony/ims/ImsService;->getImsFeature(II)Landroid/telephony/ims/feature/ImsFeature;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/MmTelFeature;

    if-nez v0, :cond_19

    new-instance v1, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/ims/ImsService$2;II)V

    const-string v2, "createMmTelFeature"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/ImsService$2;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/aidl/IImsMmTelFeature;

    return-object v1

    :cond_19
    invoke-virtual {v0}, Landroid/telephony/ims/feature/MmTelFeature;->getBinder()Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v1

    return-object v1
.end method

.method public createRcsFeature(II)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .registers 6

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/telephony/ims/ImsService;->getImsFeature(II)Landroid/telephony/ims/feature/ImsFeature;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/RcsFeature;

    if-nez v0, :cond_19

    new-instance v1, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/ims/ImsService$2;II)V

    const-string v2, "createRcsFeature"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/ImsService$2;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/aidl/IImsRcsFeature;

    return-object v1

    :cond_19
    invoke-virtual {v0}, Landroid/telephony/ims/feature/RcsFeature;->getBinder()Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    return-object v1
.end method

.method public disableIms(II)V
    .registers 5

    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/ims/ImsService$2;II)V

    const-string v1, "disableIms"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsService$2;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public enableIms(II)V
    .registers 5

    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/ImsService$2;II)V

    const-string v1, "enableIms"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsService$2;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public getConfig(II)Landroid/telephony/ims/aidl/IImsConfig;
    .registers 5

    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/ims/ImsService$2;II)V

    const-string v1, "getConfig"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsService$2;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/aidl/IImsConfig;

    return-object v0
.end method

.method public getImsServiceCapabilities()J
    .registers 3

    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/ImsService$2;)V

    const-string v1, "getImsServiceCapabilities"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsService$2;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 5

    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/ImsService$2;II)V

    const-string v1, "getRegistration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsService$2;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/aidl/IImsRegistration;

    return-object v0
.end method

.method public getSipTransport(I)Landroid/telephony/ims/aidl/ISipTransport;
    .registers 4

    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/ims/ImsService$2;I)V

    const-string v1, "getSipTransport"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsService$2;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/aidl/ISipTransport;

    return-object v0
.end method

.method synthetic lambda$addFeatureStatusCallback$3$android-telephony-ims-ImsService$2(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->-$$Nest$maddImsFeatureStatusCallback(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method synthetic lambda$createEmergencyOnlyMmTelFeature$1$android-telephony-ims-ImsService$2(I)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0, p1}, Landroid/telephony/ims/ImsService;->-$$Nest$mcreateEmergencyOnlyMmTelFeatureInternal(Landroid/telephony/ims/ImsService;I)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$createMmTelFeature$0$android-telephony-ims-ImsService$2(II)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/ImsService;->-$$Nest$mcreateMmTelFeatureInternal(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/aidl/IImsMmTelFeature;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$createRcsFeature$2$android-telephony-ims-ImsService$2(II)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/ImsService;->-$$Nest$mcreateRcsFeatureInternal(Landroid/telephony/ims/ImsService;II)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$disableIms$13$android-telephony-ims-ImsService$2(II)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsService;->disableImsForSubscription(II)V

    return-void
.end method

.method synthetic lambda$enableIms$12$android-telephony-ims-ImsService$2(II)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsService;->enableImsForSubscription(II)V

    return-void
.end method

.method synthetic lambda$getConfig$9$android-telephony-ims-ImsService$2(II)Landroid/telephony/ims/aidl/IImsConfig;
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsService;->getConfigForSubscription(II)Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/ImsService;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v1

    return-object v1

    :cond_16
    const/4 v1, 0x0

    return-object v1
.end method

.method synthetic lambda$getImsServiceCapabilities$7$android-telephony-ims-ImsService$2()Ljava/lang/Long;
    .registers 8

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsService;->getImsServiceCapabilities()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/ims/ImsService;->-$$Nest$smsanitizeCapabilities(J)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removing invalid bits from field: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    xor-long v5, v0, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ImsService"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    return-object v4
.end method

.method synthetic lambda$getRegistration$10$android-telephony-ims-ImsService$2(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsService;->getRegistrationForSubscription(II)Landroid/telephony/ims/stub/ImsRegistrationImplBase;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/ImsService;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->getBinder()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v1

    return-object v1

    :cond_16
    const/4 v1, 0x0

    return-object v1
.end method

.method synthetic lambda$getSipTransport$11$android-telephony-ims-ImsService$2(I)Landroid/telephony/ims/aidl/ISipTransport;
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsService;->getSipTransport(I)Landroid/telephony/ims/stub/SipTransportImplBase;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v1}, Landroid/telephony/ims/ImsService;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/ImsService;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/stub/SipTransportImplBase;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0}, Landroid/telephony/ims/stub/SipTransportImplBase;->getBinder()Landroid/telephony/ims/aidl/ISipTransport;

    move-result-object v1

    return-object v1

    :cond_16
    const/4 v1, 0x0

    return-object v1
.end method

.method synthetic lambda$notifyImsServiceReadyForFeatureCreation$8$android-telephony-ims-ImsService$2()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsService;->readyForFeatureCreation()V

    return-void
.end method

.method synthetic lambda$querySupportedImsFeatures$6$android-telephony-ims-ImsService$2()Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsService;->querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$removeFeatureStatusCallback$4$android-telephony-ims-ImsService$2(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0, p1, p2, p3}, Landroid/telephony/ims/ImsService;->-$$Nest$mremoveImsFeatureStatusCallback(Landroid/telephony/ims/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method synthetic lambda$removeImsFeature$5$android-telephony-ims-ImsService$2(II)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/ImsService;->-$$Nest$mremoveImsFeature(Landroid/telephony/ims/ImsService;II)V

    return-void
.end method

.method public notifyImsServiceReadyForFeatureCreation()V
    .registers 3

    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/ims/ImsService$2;)V

    const-string/jumbo v1, "notifyImsServiceReadyForFeatureCreation"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsService$2;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .registers 3

    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/ImsService$2;)V

    const-string v1, "ImsFeatureConfiguration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsService$2;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    return-object v0
.end method

.method public removeFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .registers 6

    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/ImsService$2;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    const-string/jumbo v1, "removeFeatureStatusCallback"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsService$2;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public removeImsFeature(IIZ)V
    .registers 6

    if-eqz p3, :cond_12

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsService;->isImsFeatureCreatedForSlot(II)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "ImsService"

    const-string v1, "Do not remove Ims feature for compatibility"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    new-instance v0, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/ImsService$2$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/ImsService$2;II)V

    const-string/jumbo v1, "removeImsFeature"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/ImsService$2;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/telephony/ims/ImsService;->-$$Nest$msetImsFeatureCreatedForSlot(Landroid/telephony/ims/ImsService;IIZ)V

    return-void
.end method

.method public setListener(Landroid/telephony/ims/aidl/IImsServiceControllerListener;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/ImsService$2;->this$0:Landroid/telephony/ims/ImsService;

    invoke-static {v0, p1}, Landroid/telephony/ims/ImsService;->-$$Nest$fputmListener(Landroid/telephony/ims/ImsService;Landroid/telephony/ims/aidl/IImsServiceControllerListener;)V

    return-void
.end method
