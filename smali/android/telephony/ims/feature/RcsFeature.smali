# classes3.dex

.class public Landroid/telephony/ims/feature/RcsFeature;
.super Landroid/telephony/ims/feature/ImsFeature;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;,
        Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RcsFeature"


# instance fields
.field private mCapExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

.field private mCapabilityExchangeImpl:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private final mImsRcsBinder:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;


# direct methods
.method static bridge synthetic -$$Nest$mgetCapabilityExchangeImplBaseInternal(Landroid/telephony/ims/feature/RcsFeature;)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/feature/RcsFeature;->getCapabilityExchangeImplBaseInternal()Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetCapabilityExchangeEventListener(Landroid/telephony/ims/feature/RcsFeature;Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/RcsFeature;->setCapabilityExchangeEventListener(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature;-><init>()V

    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;-><init>(Landroid/telephony/ims/feature/RcsFeature;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mImsRcsBinder:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 4

    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature;-><init>()V

    if-eqz p1, :cond_11

    iput-object p1, p0, Landroid/telephony/ims/feature/RcsFeature;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;-><init>(Landroid/telephony/ims/feature/RcsFeature;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mImsRcsBinder:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getCapabilityExchangeImplBaseInternal()Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature;->mCapabilityExchangeImpl:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    if-eqz v1, :cond_9

    monitor-exit v0

    return-object v1

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Session is not available."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private initRcsCapabilityExchangeImplBase(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature;->mCapabilityExchangeImpl:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    if-eqz v1, :cond_a

    invoke-virtual {p0, v1}, Landroid/telephony/ims/feature/RcsFeature;->destroyCapabilityExchangeImpl(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;)V

    :cond_a
    invoke-virtual {p0, p1}, Landroid/telephony/ims/feature/RcsFeature;->createCapabilityExchangeImpl(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/feature/RcsFeature;->mCapabilityExchangeImpl:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private setCapabilityExchangeEventListener(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Landroid/telephony/ims/feature/RcsFeature;->mCapExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    if-eqz p1, :cond_b

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/RcsFeature;->initRcsCapabilityExchangeImplBase(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V

    goto :goto_15

    :cond_b
    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature;->mCapabilityExchangeImpl:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    if-eqz v1, :cond_12

    invoke-virtual {p0, v1}, Landroid/telephony/ims/feature/RcsFeature;->destroyCapabilityExchangeImpl(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;)V

    :cond_12
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telephony/ims/feature/RcsFeature;->mCapabilityExchangeImpl:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    :goto_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method


# virtual methods
.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .registers 3

    return-void
.end method

.method public createCapabilityExchangeImpl(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
    .registers 3

    new-instance v0, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    invoke-direct {v0}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;-><init>()V

    return-object v0
.end method

.method public destroyCapabilityExchangeImpl(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic getBinder()Landroid/os/IInterface;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/ims/feature/RcsFeature;->getBinder()Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v0

    return-object v0
.end method

.method public final getBinder()Landroid/telephony/ims/aidl/IImsRcsFeature;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mImsRcsBinder:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/telephony/ims/feature/ImsFeature;->initialize(Landroid/content/Context;I)V

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/ims/feature/RcsFeature$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/telephony/ims/feature/RcsFeature$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/feature/RcsFeature;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$initialize$0$android-telephony-ims-feature-RcsFeature()V
    .registers 1

    invoke-virtual {p0}, Landroid/telephony/ims/feature/RcsFeature;->onFeatureReady()V

    return-void
.end method

.method public final notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    .registers 4

    if-eqz p1, :cond_6

    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RcsImsCapabilities must be non-null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onFeatureReady()V
    .registers 1

    return-void
.end method

.method public onFeatureRemoved()V
    .registers 1

    return-void
.end method

.method public queryCapabilityConfiguration(II)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/ims/feature/RcsFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public final queryCapabilityStatus()Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    .registers 4

    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-super {p0}, Landroid/telephony/ims/feature/ImsFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities-IA;)V

    return-object v0
.end method

.method public final setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mImsRcsBinder:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    invoke-static {v0}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_f

    iput-object p1, p0, Landroid/telephony/ims/feature/RcsFeature;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature;->mImsRcsBinder:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    invoke-static {v0, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->-$$Nest$fputmExecutor(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Ljava/util/concurrent/Executor;)V

    :cond_f
    return-void
.end method
