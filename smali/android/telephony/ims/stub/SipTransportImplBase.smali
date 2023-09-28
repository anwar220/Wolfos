# classes3.dex

.class public Landroid/telephony/ims/stub/SipTransportImplBase;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SipTransportIB"


# instance fields
.field private mBinderExecutor:Ljava/util/concurrent/Executor;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mSipTransportImpl:Landroid/telephony/ims/aidl/ISipTransport$Stub;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBinderExecutor(Landroid/telephony/ims/stub/SipTransportImplBase;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mBinderExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbinderDiedInternal(Landroid/telephony/ims/stub/SipTransportImplBase;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/SipTransportImplBase;->binderDiedInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateSipDelegateInternal(Landroid/telephony/ims/stub/SipTransportImplBase;ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telephony/ims/stub/SipTransportImplBase;->createSipDelegateInternal(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdestroySipDelegateInternal(Landroid/telephony/ims/stub/SipTransportImplBase;Landroid/telephony/ims/aidl/ISipDelegate;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/SipTransportImplBase;->destroySipDelegateInternal(Landroid/telephony/ims/aidl/ISipDelegate;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/stub/SipTransportImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/SipTransportImplBase$1;-><init>(Landroid/telephony/ims/stub/SipTransportImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Landroid/telephony/ims/stub/SipTransportImplBase$2;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/SipTransportImplBase$2;-><init>(Landroid/telephony/ims/stub/SipTransportImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mSipTransportImpl:Landroid/telephony/ims/aidl/ISipTransport$Stub;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDelegates:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/ims/stub/SipTransportImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/SipTransportImplBase$1;-><init>(Landroid/telephony/ims/stub/SipTransportImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Landroid/telephony/ims/stub/SipTransportImplBase$2;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/SipTransportImplBase$2;-><init>(Landroid/telephony/ims/stub/SipTransportImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mSipTransportImpl:Landroid/telephony/ims/aidl/ISipTransport$Stub;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDelegates:Ljava/util/ArrayList;

    if-eqz p1, :cond_1d

    iput-object p1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mBinderExecutor:Ljava/util/concurrent/Executor;

    return-void

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private binderDiedInternal(Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "SipTransportIB"

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    if-eqz p1, :cond_26

    invoke-virtual {v1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_26

    :cond_25
    goto :goto_6

    :cond_26
    :goto_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binder death detected for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", calling destroy and removing."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->getDelegate()Landroid/telephony/ims/stub/SipDelegate;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/telephony/ims/stub/SipTransportImplBase;->destroySipDelegate(Landroid/telephony/ims/stub/SipDelegate;I)V

    return-void

    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder death detected for IBinder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", but couldn\'t find matching SipDelegate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createSipDelegateInternal(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V
    .registers 7

    new-instance v0, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    iget-object v1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mBinderExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p3, p4}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/aidl/ISipDelegateStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Landroid/telephony/ims/stub/SipTransportImplBase;->linkDeathRecipient(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)V

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/telephony/ims/stub/SipTransportImplBase;->createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V

    return-void
.end method

.method private destroySipDelegateInternal(Landroid/telephony/ims/aidl/ISipDelegate;I)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;

    invoke-virtual {v2}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->getDelegateBinder()Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move-object v0, v2

    goto :goto_20

    :cond_1f
    goto :goto_7

    :cond_20
    :goto_20
    if-eqz v0, :cond_32

    invoke-direct {p0, v0}, Landroid/telephony/ims/stub/SipTransportImplBase;->unlinkDeathRecipient(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)V

    iget-object v1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->getDelegate()Landroid/telephony/ims/stub/SipDelegate;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Landroid/telephony/ims/stub/SipTransportImplBase;->destroySipDelegate(Landroid/telephony/ims/stub/SipDelegate;I)V

    goto :goto_4a

    :cond_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySipDelegateInternal, could not findSipDelegate corresponding to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SipTransportIB"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4a
    return-void
.end method

.method private linkDeathRecipient(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_25

    :catch_f
    move-exception v0

    const-string v1, "SipTransportIB"

    const-string/jumbo v2, "linkDeathRecipient, remote process already died, cleaning up."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/IBinder$DeathRecipient;->binderDied(Landroid/os/IBinder;)V

    :goto_25
    return-void
.end method

.method private unlinkDeathRecipient(Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ims/aidl/SipDelegateAidlWrapper;->getStateCallbackBinder()Landroid/telephony/ims/aidl/ISipDelegateStateCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/ims/aidl/ISipDelegateStateCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_e
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    move-exception v0

    :goto_10
    return-void
.end method


# virtual methods
.method public createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Landroid/telephony/ims/DelegateStateCallback;Landroid/telephony/ims/DelegateMessageCallback;)V
    .registers 7

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "createSipDelegate not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public destroySipDelegate(Landroid/telephony/ims/stub/SipDelegate;I)V
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "destroySipDelegate not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBinder()Landroid/telephony/ims/aidl/ISipTransport;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mSipTransportImpl:Landroid/telephony/ims/aidl/ISipTransport$Stub;

    return-object v0
.end method

.method public final setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mBinderExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_6

    iput-object p1, p0, Landroid/telephony/ims/stub/SipTransportImplBase;->mBinderExecutor:Ljava/util/concurrent/Executor;

    :cond_6
    return-void
.end method
