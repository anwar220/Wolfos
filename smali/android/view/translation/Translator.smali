# classes2.dex

.class public Landroid/view/translation/Translator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/Translator$TranslationResponseCallbackImpl;,
        Landroid/view/translation/Translator$ServiceBinderReceiver;
    }
.end annotation


# static fields
.field public static final EXTRA_SERVICE_BINDER:Ljava/lang/String; = "binder"

.field public static final EXTRA_SESSION_ID:Ljava/lang/String; = "sessionId"

.field private static final TAG:Ljava/lang/String; = "Translator"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

.field private final mHandler:Landroid/os/Handler;

.field private mId:I

.field private final mLock:Ljava/lang/Object;

.field private final mManager:Landroid/view/translation/TranslationManager;

.field private final mServiceBinderReceiver:Landroid/view/translation/Translator$ServiceBinderReceiver;

.field private mSystemServerBinder:Landroid/view/translation/ITranslationManager;

.field private final mTranslationContext:Landroid/view/translation/TranslationContext;


# direct methods
.method static bridge synthetic -$$Nest$msetServiceBinder(Landroid/view/translation/Translator;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/translation/Translator;->setServiceBinder(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/translation/TranslationContext;ILandroid/view/translation/TranslationManager;Landroid/os/Handler;Landroid/view/translation/ITranslationManager;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/translation/Translator;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/view/translation/Translator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/translation/Translator;->mTranslationContext:Landroid/view/translation/TranslationContext;

    iput p3, p0, Landroid/view/translation/Translator;->mId:I

    iput-object p4, p0, Landroid/view/translation/Translator;->mManager:Landroid/view/translation/TranslationManager;

    iput-object p5, p0, Landroid/view/translation/Translator;->mHandler:Landroid/os/Handler;

    iput-object p6, p0, Landroid/view/translation/Translator;->mSystemServerBinder:Landroid/view/translation/ITranslationManager;

    new-instance v0, Landroid/view/translation/Translator$ServiceBinderReceiver;

    invoke-direct {v0, p0}, Landroid/view/translation/Translator$ServiceBinderReceiver;-><init>(Landroid/view/translation/Translator;)V

    iput-object v0, p0, Landroid/view/translation/Translator;->mServiceBinderReceiver:Landroid/view/translation/Translator$ServiceBinderReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/translation/TranslationContext;ILandroid/view/translation/TranslationManager;Landroid/os/Handler;Landroid/view/translation/ITranslationManager;Ljava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/translation/TranslationContext;",
            "I",
            "Landroid/view/translation/TranslationManager;",
            "Landroid/os/Handler;",
            "Landroid/view/translation/ITranslationManager;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/Translator;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/translation/Translator;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/view/translation/Translator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/translation/Translator;->mTranslationContext:Landroid/view/translation/TranslationContext;

    iput p3, p0, Landroid/view/translation/Translator;->mId:I

    iput-object p4, p0, Landroid/view/translation/Translator;->mManager:Landroid/view/translation/TranslationManager;

    iput-object p5, p0, Landroid/view/translation/Translator;->mHandler:Landroid/os/Handler;

    iput-object p6, p0, Landroid/view/translation/Translator;->mSystemServerBinder:Landroid/view/translation/ITranslationManager;

    new-instance v0, Landroid/view/translation/Translator$ServiceBinderReceiver;

    invoke-direct {v0, p0, p7}, Landroid/view/translation/Translator$ServiceBinderReceiver;-><init>(Landroid/view/translation/Translator;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Landroid/view/translation/Translator;->mServiceBinderReceiver:Landroid/view/translation/Translator$ServiceBinderReceiver;

    :try_start_1d
    iget-object v1, p0, Landroid/view/translation/Translator;->mSystemServerBinder:Landroid/view/translation/ITranslationManager;

    iget v2, p0, Landroid/view/translation/Translator;->mId:I

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v1, p2, v2, v0, v3}, Landroid/view/translation/ITranslationManager;->onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_28} :catch_29

    goto :goto_42

    :catch_29
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException calling startSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Translator"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_42
    return-void
.end method

.method private getNextRequestId()I
    .registers 2

    iget-object v0, p0, Landroid/view/translation/Translator;->mManager:Landroid/view/translation/TranslationManager;

    invoke-virtual {v0}, Landroid/view/translation/TranslationManager;->getAvailableRequestId()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method private setServiceBinder(Landroid/os/IBinder;)V
    .registers 4

    iget-object v0, p0, Landroid/view/translation/Translator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    if-eqz p1, :cond_11

    invoke-static {p1}, Landroid/view/translation/ITranslationDirectManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/translation/ITranslationDirectManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    :cond_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method


# virtual methods
.method public destroy()V
    .registers 5

    iget-object v0, p0, Landroid/view/translation/Translator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/view/translation/Translator;->mDestroyed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/translation/Translator;->mDestroyed:Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_28

    :try_start_c
    iget-object v1, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    iget v2, p0, Landroid/view/translation/Translator;->mId:I

    invoke-interface {v1, v2}, Landroid/view/translation/ITranslationDirectManager;->onFinishTranslationSession(I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14
    .catchall {:try_start_c .. :try_end_13} :catchall_28

    goto :goto_1c

    :catch_14
    move-exception v1

    :try_start_15
    const-string v2, "Translator"

    const-string v3, "RemoteException calling onSessionFinished"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    iget-object v1, p0, Landroid/view/translation/Translator;->mManager:Landroid/view/translation/TranslationManager;

    iget v2, p0, Landroid/view/translation/Translator;->mId:I

    invoke-virtual {v1, v2}, Landroid/view/translation/TranslationManager;->removeTranslator(I)V

    monitor-exit v0

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "translationContext: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/translation/Translator;->mTranslationContext:Landroid/view/translation/TranslationContext;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getTranslationContext()Landroid/view/translation/TranslationContext;
    .registers 2

    iget-object v0, p0, Landroid/view/translation/Translator;->mTranslationContext:Landroid/view/translation/TranslationContext;

    return-object v0
.end method

.method public getTranslatorId()I
    .registers 2

    iget v0, p0, Landroid/view/translation/Translator;->mId:I

    return v0
.end method

.method public isDestroyed()Z
    .registers 3

    iget-object v0, p0, Landroid/view/translation/Translator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/view/translation/Translator;->mDestroyed:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method isSessionCreated()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/translation/Translator$ServiceBinderReceiver$TimeoutException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/translation/Translator;->mServiceBinderReceiver:Landroid/view/translation/Translator$ServiceBinderReceiver;

    invoke-virtual {v0}, Landroid/view/translation/Translator$ServiceBinderReceiver;->getSessionStateResult()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public requestUiTranslate(Landroid/view/translation/TranslationRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationResponse;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    const-string v1, "Translator"

    if-nez v0, :cond_c

    const-string v0, "Translator created without proper initialization."

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    new-instance v0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;

    invoke-direct {v0, p3, p2}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    :try_start_11
    iget-object v2, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    iget v3, p0, Landroid/view/translation/Translator;->mId:I

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v4

    invoke-interface {v2, p1, v3, v4, v0}, Landroid/view/translation/ITranslationDirectManager;->onTranslationRequest(Landroid/view/translation/TranslationRequest;ILandroid/os/ICancellationSignal;Landroid/service/translation/ITranslationCallback;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1c} :catch_1d

    goto :goto_23

    :catch_1d
    move-exception v2

    const-string v3, "RemoteException calling flushRequest"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method

.method start()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/view/translation/Translator;->mSystemServerBinder:Landroid/view/translation/ITranslationManager;

    iget-object v1, p0, Landroid/view/translation/Translator;->mTranslationContext:Landroid/view/translation/TranslationContext;

    iget v2, p0, Landroid/view/translation/Translator;->mId:I

    iget-object v3, p0, Landroid/view/translation/Translator;->mServiceBinderReceiver:Landroid/view/translation/Translator$ServiceBinderReceiver;

    iget-object v4, p0, Landroid/view/translation/Translator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/translation/ITranslationManager;->onSessionCreated(Landroid/view/translation/TranslationContext;ILcom/android/internal/os/IResultReceiver;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_2b

    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException calling startSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Translator"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    return-void
.end method

.method public translate(Landroid/view/translation/TranslationRequest;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationRequest;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Translation request cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Executor cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Callback cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/translation/Translator;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_46

    const/4 v0, 0x0

    if-eqz p2, :cond_1f

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    :cond_1f
    new-instance v1, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;

    invoke-direct {v1, p4, p3}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    :try_start_24
    iget-object v2, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    iget v3, p0, Landroid/view/translation/Translator;->mId:I

    invoke-interface {v2, p1, v3, v0, v1}, Landroid/view/translation/ITranslationDirectManager;->onTranslationRequest(Landroid/view/translation/TranslationRequest;ILandroid/os/ICancellationSignal;Landroid/service/translation/ITranslationCallback;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2b} :catch_2c

    goto :goto_45

    :catch_2c
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException calling requestTranslate(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Translator"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_45
    return-void

    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This translator has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public translate(Landroid/view/translation/TranslationRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/translation/TranslationRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/translation/TranslationResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Translation request cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Executor cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Callback cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/translation/Translator;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_40

    new-instance v0, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;

    invoke-direct {v0, p3, p2}, Landroid/view/translation/Translator$TranslationResponseCallbackImpl;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    :try_start_1a
    iget-object v1, p0, Landroid/view/translation/Translator;->mDirectServiceBinder:Landroid/view/translation/ITranslationDirectManager;

    iget v2, p0, Landroid/view/translation/Translator;->mId:I

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3, v0}, Landroid/view/translation/ITranslationDirectManager;->onTranslationRequest(Landroid/view/translation/TranslationRequest;ILandroid/os/ICancellationSignal;Landroid/service/translation/ITranslationCallback;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_25} :catch_26

    goto :goto_3f

    :catch_26
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException calling requestTranslate(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Translator"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3f
    return-void

    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This translator has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
