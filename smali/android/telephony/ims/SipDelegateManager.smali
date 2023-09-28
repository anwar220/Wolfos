# classes3.dex

.class public Landroid/telephony/ims/SipDelegateManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/SipDelegateManager$SipDelegateDestroyReason;,
        Landroid/telephony/ims/SipDelegateManager$DeniedReason;,
        Landroid/telephony/ims/SipDelegateManager$MessageFailureReason;
    }
.end annotation


# static fields
.field public static final DENIED_REASON_INVALID:I = 0x4

.field public static final DENIED_REASON_IN_USE_BY_ANOTHER_DELEGATE:I = 0x1

.field public static final DENIED_REASON_NOT_ALLOWED:I = 0x2

.field public static final DENIED_REASON_SINGLE_REGISTRATION_NOT_ALLOWED:I = 0x3

.field public static final DENIED_REASON_UNKNOWN:I = 0x0

.field public static final MESSAGE_FAILURE_REASON_DELEGATE_CLOSED:I = 0x2

.field public static final MESSAGE_FAILURE_REASON_DELEGATE_DEAD:I = 0x1

.field public static final MESSAGE_FAILURE_REASON_INTERNAL_DELEGATE_STATE_TRANSITION:I = 0xb

.field public static final MESSAGE_FAILURE_REASON_INVALID_BODY_CONTENT:I = 0x5

.field public static final MESSAGE_FAILURE_REASON_INVALID_FEATURE_TAG:I = 0x6

.field public static final MESSAGE_FAILURE_REASON_INVALID_HEADER_FIELDS:I = 0x4

.field public static final MESSAGE_FAILURE_REASON_INVALID_START_LINE:I = 0x3

.field public static final MESSAGE_FAILURE_REASON_NETWORK_NOT_AVAILABLE:I = 0x8

.field public static final MESSAGE_FAILURE_REASON_NOT_REGISTERED:I = 0x9

.field public static final MESSAGE_FAILURE_REASON_STALE_IMS_CONFIGURATION:I = 0xa

.field public static final MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MESSAGE_FAILURE_REASON_TAG_NOT_ENABLED_FOR_DELEGATE:I = 0x7

.field public static final MESSAGE_FAILURE_REASON_UNKNOWN:I = 0x0

.field public static final SIP_DELEGATE_DESTROY_REASON_REQUESTED_BY_APP:I = 0x2

.field public static final SIP_DELEGATE_DESTROY_REASON_SERVICE_DEAD:I = 0x1

.field public static final SIP_DELEGATE_DESTROY_REASON_SUBSCRIPTION_TORN_DOWN:I = 0x4

.field public static final SIP_DELEGATE_DESTROY_REASON_UNKNOWN:I = 0x0

.field public static final SIP_DELEGATE_DESTROY_REASON_USER_DISABLED_RCS:I = 0x3


# instance fields
.field private final mBinderCache:Landroid/telephony/BinderCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager<",
            "Landroid/telephony/ims/aidl/IImsRcsController;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mSubId:I

.field private final mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/util/ArrayMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Landroid/telephony/ims/SipDelegateManager;->MESSAGE_FAILURE_REASON_STRING_MAP:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_UNKNOWN"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_DELEGATE_DEAD"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_DELEGATE_CLOSED"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_INVALID_HEADER_FIELDS"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_INVALID_BODY_CONTENT"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_INVALID_FEATURE_TAG"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    nop

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_TAG_NOT_ENABLED_FOR_DELEGATE"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_NETWORK_NOT_AVAILABLE"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_NOT_REGISTERED"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "MESSAGE_FAILURE_REASON_STALE_IMS_CONFIGURATION"

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    nop

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MESSAGE_FAILURE_REASON_INTERNAL_DELEGATE_STATE_TRANSITION"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/telephony/BinderCacheManager;Landroid/telephony/BinderCacheManager;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/telephony/BinderCacheManager<",
            "Landroid/telephony/ims/aidl/IImsRcsController;",
            ">;",
            "Landroid/telephony/BinderCacheManager<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/SipDelegateManager;->mContext:Landroid/content/Context;

    iput p2, p0, Landroid/telephony/ims/SipDelegateManager;->mSubId:I

    iput-object p3, p0, Landroid/telephony/ims/SipDelegateManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    iput-object p4, p0, Landroid/telephony/ims/SipDelegateManager;->mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;

    return-void
.end method


# virtual methods
.method public createSipDelegate(Landroid/telephony/ims/DelegateRequest;Ljava/util/concurrent/Executor;Landroid/telephony/ims/stub/DelegateConnectionStateCallback;Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    const-string v0, "The DelegateRequest must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The Executor must not be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The DelegateConnectionStateCallback must not be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The DelegateConnectionMessageCallback must not be null."

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    :try_start_15
    new-instance v1, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    invoke-direct {v1, p2, p3, p4}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/stub/DelegateConnectionStateCallback;Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;)V

    iget-object v2, p0, Landroid/telephony/ims/SipDelegateManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/telephony/ims/SipDelegateManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Landroid/telephony/ims/SipDelegateManager$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)V

    invoke-virtual {v2, v1, v3}, Landroid/telephony/BinderCacheManager;->listenOnBinder(Ljava/lang/Object;Ljava/lang/Runnable;)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/aidl/IImsRcsController;

    if-eqz v2, :cond_43

    iget v4, p0, Landroid/telephony/ims/SipDelegateManager;->mSubId:I

    iget-object v3, p0, Landroid/telephony/ims/SipDelegateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;

    move-result-object v7

    invoke-virtual {v1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getMessageCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    move-result-object v8

    move-object v3, v2

    move-object v5, p1

    invoke-interface/range {v3 .. v8}, Landroid/telephony/ims/aidl/IImsRcsController;->createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Ljava/lang/String;Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V

    nop

    return-void

    :cond_43
    new-instance v3, Landroid/telephony/ims/ImsException;

    const-string v4, "Telephony server is down"

    invoke-direct {v3, v4, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_4b
    .catch Landroid/os/ServiceSpecificException; {:try_start_15 .. :try_end_4b} :catch_56
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_4b} :catch_4b

    :catch_4b
    move-exception v1

    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    :catch_56
    move-exception v0

    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public destroySipDelegate(Landroid/telephony/ims/SipDelegateConnection;I)V
    .registers 7

    const-string v0, "SipDelegateConnection can not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    if-eqz v0, :cond_2b

    move-object v0, p1

    check-cast v0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    :try_start_c
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v1, v0}, Landroid/telephony/BinderCacheManager;->removeRunnable(Ljava/lang/Object;)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/aidl/IImsRcsController;

    iget v2, p0, Landroid/telephony/ims/SipDelegateManager;->mSubId:I

    invoke-virtual {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getSipDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2}, Landroid/telephony/ims/aidl/IImsRcsController;->destroySipDelegate(ILandroid/telephony/ims/aidl/ISipDelegate;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1d} :catch_1e

    goto :goto_29

    :catch_1e
    move-exception v1

    :try_start_1f
    invoke-virtual {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;->onDestroyed(I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_27} :catch_28

    goto :goto_29

    :catch_28
    move-exception v2

    :goto_29
    nop

    return-void

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown SipDelegateConnection implementation passed into this method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSupported()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v1}, Landroid/telephony/BinderCacheManager;->getBinder()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/aidl/IImsRcsController;

    if-eqz v1, :cond_12

    iget v2, p0, Landroid/telephony/ims/SipDelegateManager;->mSubId:I

    invoke-interface {v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController;->isSipDelegateSupported(I)Z

    move-result v0

    return v0

    :cond_12
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Telephony server is down"

    invoke-direct {v2, v3, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_1a
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1a} :catch_25
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_1a

    :catch_1a
    move-exception v1

    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    :catch_25
    move-exception v0

    new-instance v1, Landroid/telephony/ims/ImsException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v1, v2, v3}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public registerImsStateCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsStateCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    const-string v0, "Must include a non-null ImsStateCallback."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Must include a non-null Executor."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Landroid/telephony/ims/ImsStateCallback;->init(Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateManager;->mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Landroid/telephony/ims/ImsMmTelManager$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/ImsStateCallback;)V

    invoke-virtual {v0, p2, v1}, Landroid/telephony/BinderCacheManager;->listenOnBinder(Ljava/lang/Object;Ljava/lang/Runnable;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    const/4 v1, 0x1

    if-eqz v0, :cond_4a

    :try_start_20
    iget v2, p0, Landroid/telephony/ims/SipDelegateManager;->mSubId:I

    const/4 v3, 0x2

    invoke-virtual {p2}, Landroid/telephony/ims/ImsStateCallback;->getCallbackBinder()Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/ims/SipDelegateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ITelephony;->registerImsStateCallback(IILcom/android/internal/telephony/IImsStateCallback;Ljava/lang/String;)V
    :try_end_30
    .catch Landroid/os/ServiceSpecificException; {:try_start_20 .. :try_end_30} :catch_3d
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_30} :catch_32
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_30} :catch_32

    nop

    return-void

    :catch_32
    move-exception v2

    new-instance v3, Landroid/telephony/ims/ImsException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3

    :catch_3d
    move-exception v1

    new-instance v2, Landroid/telephony/ims/ImsException;

    invoke-virtual {v1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_4a
    new-instance v2, Landroid/telephony/ims/ImsException;

    const-string v3, "Telephony server is down"

    invoke-direct {v2, v3, v1}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public triggerFullNetworkRegistration(Landroid/telephony/ims/SipDelegateConnection;ILjava/lang/String;)V
    .registers 8

    const-string v0, "SipDelegateConnection can not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    if-eqz v0, :cond_21

    move-object v0, p1

    check-cast v0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;

    :try_start_c
    iget-object v1, p0, Landroid/telephony/ims/SipDelegateManager;->mBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v1}, Landroid/telephony/BinderCacheManager;->getBinder()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/aidl/IImsRcsController;

    iget v2, p0, Landroid/telephony/ims/SipDelegateManager;->mSubId:I

    invoke-virtual {v0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getSipDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2, p3}, Landroid/telephony/ims/aidl/IImsRcsController;->triggerNetworkRegistration(ILandroid/telephony/ims/aidl/ISipDelegate;ILjava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1d} :catch_1e

    goto :goto_1f

    :catch_1e
    move-exception v1

    :goto_1f
    nop

    return-void

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown SipDelegateConnection implementation passed into this method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterImsStateCallback(Landroid/telephony/ims/ImsStateCallback;)V
    .registers 4

    const-string v0, "Must include a non-null ImsStateCallback."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/ims/SipDelegateManager;->mTelephonyBinderCache:Landroid/telephony/BinderCacheManager;

    invoke-virtual {v0, p1}, Landroid/telephony/BinderCacheManager;->removeRunnable(Ljava/lang/Object;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_19

    :try_start_f
    invoke-virtual {p1}, Landroid/telephony/ims/ImsStateCallback;->getCallbackBinder()Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->unregisterImsStateCallback(Lcom/android/internal/telephony/IImsStateCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_19

    :catch_17
    move-exception v1

    goto :goto_1a

    :cond_19
    :goto_19
    nop

    :goto_1a
    return-void
.end method
