# classes3.dex

.class final Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;
.super Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/RcsFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RcsFeatureBinder"
.end annotation


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private final mReference:Landroid/telephony/ims/feature/RcsFeature;


# direct methods
.method static bridge synthetic -$$Nest$fgetmExecutor(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmExecutor(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Ljava/util/concurrent/Executor;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Landroid/telephony/ims/feature/RcsFeature;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    iput-object p2, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mExecutor:Ljava/util/concurrent/Executor;

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
    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_e} :catch_10

    nop

    return-void

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RcsFeatureBinder - "

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

    const-string v2, "RcsFeature"

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

    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Supplier;)V

    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    :try_start_b
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_f} :catch_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RcsFeatureBinder - "

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

    const-string v3, "RcsFeature"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/RemoteException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static synthetic lambda$executeMethodAsync$9(Ljava/lang/Runnable;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$executeMethodAsyncForResult$10(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string v1, "addCapabilityCallback"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public changeCapabilitiesConfiguration(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string v1, "changeCapabilitiesConfiguration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public getFeatureState()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/feature/RcsFeature;)V

    const-string v0, "getFeatureState"

    invoke-direct {p0, v1, v0}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method synthetic lambda$addCapabilityCallback$1$android-telephony-ims-feature-RcsFeature$RcsFeatureBinder(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/RcsFeature;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method synthetic lambda$changeCapabilitiesConfiguration$3$android-telephony-ims-feature-RcsFeature$RcsFeatureBinder(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/feature/RcsFeature;->requestChangeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method synthetic lambda$publishCapabilities$6$android-telephony-ims-feature-RcsFeature$RcsFeatureBinder(Ljava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-static {v0}, Landroid/telephony/ims/feature/RcsFeature;->-$$Nest$mgetCapabilityExchangeImplBaseInternal(Landroid/telephony/ims/feature/RcsFeature;)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;->publishCapabilities(Ljava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V

    return-void
.end method

.method synthetic lambda$queryCapabilityConfiguration$4$android-telephony-ims-feature-RcsFeature$RcsFeatureBinder(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/feature/RcsFeature;->queryCapabilityConfigurationInternal(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method synthetic lambda$queryCapabilityStatus$0$android-telephony-ims-feature-RcsFeature$RcsFeatureBinder()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/RcsFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    move-result-object v0

    iget v0, v0, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->mCapabilities:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$removeCapabilityCallback$2$android-telephony-ims-feature-RcsFeature$RcsFeatureBinder(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/RcsFeature;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method synthetic lambda$sendOptionsCapabilityRequest$8$android-telephony-ims-feature-RcsFeature$RcsFeatureBinder(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-static {v0}, Landroid/telephony/ims/feature/RcsFeature;->-$$Nest$mgetCapabilityExchangeImplBaseInternal(Landroid/telephony/ims/feature/RcsFeature;)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1, p3}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;->sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;)V

    return-void
.end method

.method synthetic lambda$setCapabilityExchangeEventListener$5$android-telephony-ims-feature-RcsFeature$RcsFeatureBinder(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-static {v0, p1}, Landroid/telephony/ims/feature/RcsFeature;->-$$Nest$msetCapabilityExchangeEventListener(Landroid/telephony/ims/feature/RcsFeature;Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V

    return-void
.end method

.method synthetic lambda$subscribeForCapabilities$7$android-telephony-ims-feature-RcsFeature$RcsFeatureBinder(Ljava/util/List;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->mReference:Landroid/telephony/ims/feature/RcsFeature;

    invoke-static {v0}, Landroid/telephony/ims/feature/RcsFeature;->-$$Nest$mgetCapabilityExchangeImplBaseInternal(Landroid/telephony/ims/feature/RcsFeature;)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;->subscribeForCapabilities(Ljava/util/Collection;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V

    return-void
.end method

.method public publishCapabilities(Ljava/lang/String;Landroid/telephony/ims/aidl/IPublishResponseCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;

    invoke-direct {v0, p2}, Landroid/telephony/ims/aidl/RcsPublishResponseAidlWrapper;-><init>(Landroid/telephony/ims/aidl/IPublishResponseCallback;)V

    new-instance v1, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Ljava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V

    const-string/jumbo v2, "publishCapabilities"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string/jumbo v1, "queryCapabilityConfiguration"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public queryCapabilityStatus()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;)V

    const-string/jumbo v1, "queryCapabilityStatus"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    const-string/jumbo v1, "removeCapabilityCallback"

    invoke-direct {p0, v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsResponseCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/aidl/IOptionsResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/aidl/RcsOptionsResponseAidlWrapper;

    invoke-direct {v0, p3}, Landroid/telephony/ims/aidl/RcsOptionsResponseAidlWrapper;-><init>(Landroid/telephony/ims/aidl/IOptionsResponseCallback;)V

    new-instance v1, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;)V

    const-string/jumbo v2, "sendOptionsCapabilityRequest"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public setCapabilityExchangeEventListener(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_8

    new-instance v0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;

    invoke-direct {v0, p1}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;-><init>(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    new-instance v1, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V

    const-string/jumbo v2, "setCapabilityExchangeEventListener"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public subscribeForCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/ISubscribeResponseCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/aidl/ISubscribeResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;

    invoke-direct {v0, p2}, Landroid/telephony/ims/aidl/RcsSubscribeResponseAidlWrapper;-><init>(Landroid/telephony/ims/aidl/ISubscribeResponseCallback;)V

    new-instance v1, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Ljava/util/List;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V

    const-string/jumbo v2, "subscribeForCapabilities"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
