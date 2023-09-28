# classes3.dex

.class public Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/telephony/ims/SipDelegateConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SipDelegateCAW"


# instance fields
.field private final mDelegateBinder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/telephony/ims/aidl/ISipDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mMessageBinder:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;

.field private final mMessageCallback:Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;

.field private final mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;

.field private final mStateCallback:Landroid/telephony/ims/stub/DelegateConnectionStateCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmExecutor(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMessageCallback(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mMessageCallback:Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateCallback(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)Landroid/telephony/ims/stub/DelegateConnectionStateCallback;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mStateCallback:Landroid/telephony/ims/stub/DelegateConnectionStateCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$massociateSipDelegate(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;Landroid/telephony/ims/aidl/ISipDelegate;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->associateSipDelegate(Landroid/telephony/ims/aidl/ISipDelegate;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minvalidateSipDelegateBinder(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->invalidateSipDelegateBinder()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/stub/DelegateConnectionStateCallback;Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$1;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)V

    iput-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;

    new-instance v0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;

    invoke-direct {v0, p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$2;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)V

    iput-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mMessageBinder:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mDelegateBinder:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mStateCallback:Landroid/telephony/ims/stub/DelegateConnectionStateCallback;

    iput-object p3, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mMessageCallback:Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;

    return-void
.end method

.method private associateSipDelegate(Landroid/telephony/ims/aidl/ISipDelegate;)V
    .registers 4

    if-eqz p1, :cond_d

    :try_start_2
    invoke-interface {p1}, Landroid/telephony/ims/aidl/ISipDelegate;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_d

    :catch_b
    move-exception v0

    const/4 p1, 0x0

    :cond_d
    :goto_d
    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mDelegateBinder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private invalidateSipDelegateBinder()V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mDelegateBinder:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndUpdate(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/aidl/ISipDelegate;

    if-eqz v0, :cond_32

    :try_start_f
    invoke-interface {v0}, Landroid/telephony/ims/aidl/ISipDelegate;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_17
    .catch Ljava/util/NoSuchElementException; {:try_start_f .. :try_end_17} :catch_18

    goto :goto_32

    :catch_18
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalidateSipDelegateBinder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SipDelegateCAW"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    :goto_32
    return-void
.end method

.method static synthetic lambda$invalidateSipDelegateBinder$1(Landroid/telephony/ims/aidl/ISipDelegate;)Landroid/telephony/ims/aidl/ISipDelegate;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method private notifyLocalMessageFailedToSend(Landroid/telephony/ims/SipMessage;I)V
    .registers 6

    invoke-virtual {p1}, Landroid/telephony/ims/SipMessage;->getViaBranchParameter()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p2}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    invoke-direct {p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->invalidateSipDelegateBinder()V

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cleanupSession(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getSipDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegate;->cleanupSession(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    move-exception v0

    :goto_c
    return-void
.end method

.method public getMessageCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mMessageBinder:Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;

    return-object v0
.end method

.method public getSipDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mDelegateBinder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/aidl/ISipDelegate;

    return-object v0
.end method

.method public getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mStateBinder:Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;

    return-object v0
.end method

.method synthetic lambda$binderDied$0$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mStateCallback:Landroid/telephony/ims/stub/DelegateConnectionStateCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/telephony/ims/stub/DelegateConnectionStateCallback;->onDestroyed(I)V

    return-void
.end method

.method synthetic lambda$notifyLocalMessageFailedToSend$2$android-telephony-ims-aidl-SipDelegateConnectionAidlWrapper(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->mMessageCallback:Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/stub/DelegateConnectionMessageCallback;->onMessageSendFailure(Ljava/lang/String;I)V

    return-void
.end method

.method public notifyMessageReceiveError(Ljava/lang/String;I)V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getSipDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-interface {v0, p1, p2}, Landroid/telephony/ims/aidl/ISipDelegate;->notifyMessageReceiveError(Ljava/lang/String;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    move-exception v0

    :goto_c
    return-void
.end method

.method public notifyMessageReceived(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getSipDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-interface {v0, p1}, Landroid/telephony/ims/aidl/ISipDelegate;->notifyMessageReceived(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    move-exception v0

    :goto_c
    return-void
.end method

.method public sendMessage(Landroid/telephony/ims/SipMessage;J)V
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->getSipDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->notifyLocalMessageFailedToSend(Landroid/telephony/ims/SipMessage;I)V

    return-void

    :cond_b
    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/aidl/ISipDelegate;->sendMessage(Landroid/telephony/ims/SipMessage;J)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_14

    :catch_f
    move-exception v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/telephony/ims/aidl/SipDelegateConnectionAidlWrapper;->notifyLocalMessageFailedToSend(Landroid/telephony/ims/SipMessage;I)V

    :goto_14
    return-void
.end method
