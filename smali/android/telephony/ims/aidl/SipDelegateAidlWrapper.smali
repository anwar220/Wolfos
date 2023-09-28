# classes3.dex

.class public Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/telephony/ims/DelegateStateCallback;
.implements Landroid/telephony/ims/DelegateMessageCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SipDelegateAW"


# instance fields
.field private volatile mDelegate:Landroid/telephony/ims/stub/SipDelegate;

.field private final mDelegateBinder:Landroid/telephony/ims/aidl/ISipDelegate$Stub;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mMessageBinder:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

.field private final mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDelegate(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Landroid/telephony/ims/stub/SipDelegate;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegate:Landroid/telephony/ims/stub/SipDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$1;-><init>(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)V

    iput-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegateBinder:Landroid/telephony/ims/aidl/ISipDelegate$Stub;

    iput-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    iput-object p3, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mMessageBinder:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    return-void
.end method

.method static synthetic lambda$notifyLocalMessageFailedToBeReceived$0(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;I)V
    .registers 3

    invoke-interface {p0, p1, p2}, Landroid/telephony/ims/stub/SipDelegate;->notifyMessageReceiveError(Ljava/lang/String;I)V

    return-void
.end method

.method private notifyLocalMessageFailedToBeReceived(Landroid/telephony/ims/SipMessage;I)V
    .registers 7

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegate:Landroid/telephony/ims/stub/SipDelegate;

    if-eqz v1, :cond_12

    iget-object v2, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v0, p2}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/stub/SipDelegate;Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public getDelegate()Landroid/telephony/ims/stub/SipDelegate;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegate:Landroid/telephony/ims/stub/SipDelegate;

    return-object v0
.end method

.method public getDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegateBinder:Landroid/telephony/ims/aidl/ISipDelegate$Stub;

    return-object v0
.end method

.method public getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateStateCallback;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    :goto_7
    return-void
.end method

.method public onCreated(Landroid/telephony/ims/stub/SipDelegate;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/stub/SipDelegate;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegate:Landroid/telephony/ims/stub/SipDelegate;

    if-nez p2, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_a

    :cond_9
    move-object v0, p2

    :goto_a
    move-object p2, v0

    :try_start_b
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    iget-object v1, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegateBinder:Landroid/telephony/ims/aidl/ISipDelegate$Stub;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->onCreated(Landroid/telephony/ims/aidl/ISipDelegate;Ljava/util/List;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_17} :catch_18

    goto :goto_19

    :catch_18
    move-exception v0

    :goto_19
    return-void
.end method

.method public onDestroyed(I)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegate:Landroid/telephony/ims/stub/SipDelegate;

    :try_start_3
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->onDestroyed(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    goto :goto_a

    :catch_9
    move-exception v0

    :goto_a
    return-void
.end method

.method public onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->onFeatureTagRegistrationChanged(Landroid/telephony/ims/DelegateRegistrationState;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    :goto_7
    return-void
.end method

.method public onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    :goto_7
    return-void
.end method

.method public onMessageReceived(Landroid/telephony/ims/SipMessage;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mMessageBinder:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;->onMessageReceived(Landroid/telephony/ims/SipMessage;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_f

    :catch_6
    move-exception v0

    iget-object v1, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mDelegate:Landroid/telephony/ims/stub/SipDelegate;

    if-eqz v1, :cond_f

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->notifyLocalMessageFailedToBeReceived(Landroid/telephony/ims/SipMessage;I)V

    :cond_f
    :goto_f
    return-void
.end method

.method public onMessageSendFailure(Ljava/lang/String;I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mMessageBinder:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;->onMessageSendFailure(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    :goto_7
    return-void
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->mMessageBinder:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;->onMessageSent(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception v0

    :goto_7
    return-void
.end method
