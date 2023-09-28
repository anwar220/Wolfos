# classes3.dex

.class public Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiEndpointImplBase"


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private final mImsMultiEndpoint:Lcom/android/ims/internal/IImsMultiEndpoint;

.field private mListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)Lcom/android/ims/internal/IImsExternalCallStateListener;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;Lcom/android/ims/internal/IImsExternalCallStateListener;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mImsMultiEndpoint:Lcom/android/ims/internal/IImsMultiEndpoint;

    return-void
.end method


# virtual methods
.method public getIImsMultiEndpoint()Lcom/android/ims/internal/IImsMultiEndpoint;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mImsMultiEndpoint:Lcom/android/ims/internal/IImsMultiEndpoint;

    return-object v0
.end method

.method public final onImsExternalCallStateUpdate(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MultiEndpointImplBase"

    const-string/jumbo v1, "ims external call state update triggered."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_1c

    if-eqz v1, :cond_1b

    :try_start_10
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsExternalCallStateListener;->onImsExternalCallStateUpdate(Ljava/util/List;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_1b

    :catch_14
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1b
    :goto_1b
    return-void

    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public requestImsExternalCallStateInfo()V
    .registers 3

    const-string v0, "MultiEndpointImplBase"

    const-string/jumbo v1, "requestImsExternalCallStateInfo() not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method
