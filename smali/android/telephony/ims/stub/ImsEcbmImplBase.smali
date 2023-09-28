# classes3.dex

.class public Landroid/telephony/ims/stub/ImsEcbmImplBase;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsEcbmImplBase"


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private final mImsEcbm:Lcom/android/ims/internal/IImsEcbm;

.field private mListener:Lcom/android/ims/internal/IImsEcbmListener;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsEcbmImplBase;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Landroid/telephony/ims/stub/ImsEcbmImplBase;)Lcom/android/ims/internal/IImsEcbmListener;
    .registers 1

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmListener(Landroid/telephony/ims/stub/ImsEcbmImplBase;Lcom/android/ims/internal/IImsEcbmListener;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsEcbmImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mImsEcbm:Lcom/android/ims/internal/IImsEcbm;

    return-void
.end method


# virtual methods
.method public final enteredEcbm()V
    .registers 4

    const-string v0, "ImsEcbmImplBase"

    const-string v1, "Entered ECBM."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_1b

    if-eqz v1, :cond_1a

    :try_start_f
    invoke-interface {v1}, Lcom/android/ims/internal/IImsEcbmListener;->enteredECBM()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_1a

    :catch_13
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1a
    :goto_1a
    return-void

    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public exitEmergencyCallbackMode()V
    .registers 3

    const-string v0, "ImsEcbmImplBase"

    const-string v1, "exitEmergencyCallbackMode() not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final exitedEcbm()V
    .registers 4

    const-string v0, "ImsEcbmImplBase"

    const-string v1, "Exited ECBM."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_1b

    if-eqz v1, :cond_1a

    :try_start_f
    invoke-interface {v1}, Lcom/android/ims/internal/IImsEcbmListener;->exitedECBM()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_1a

    :catch_13
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1a
    :goto_1a
    return-void

    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public getImsEcbm()Lcom/android/ims/internal/IImsEcbm;
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mImsEcbm:Lcom/android/ims/internal/IImsEcbm;

    return-object v0
.end method

.method public final setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 2

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method
