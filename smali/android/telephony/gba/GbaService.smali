# classes3.dex

.class public Landroid/telephony/gba/GbaService;
.super Landroid/app/Service;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/gba/GbaService$IGbaServiceWrapper;,
        Landroid/telephony/gba/GbaService$GbaServiceHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final EVENT_GBA_AUTH_REQUEST:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.gba.GbaService"

.field private static final TAG:Ljava/lang/String; = "GbaService"


# instance fields
.field private final mBinder:Landroid/telephony/gba/GbaService$IGbaServiceWrapper;

.field private final mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/IBootstrapAuthenticationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/telephony/gba/GbaService$GbaServiceHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallbacks(Landroid/telephony/gba/GbaService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/telephony/gba/GbaService;->mCallbacks:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/telephony/gba/GbaService;)Landroid/telephony/gba/GbaService$GbaServiceHandler;
    .registers 1

    iget-object p0, p0, Landroid/telephony/gba/GbaService;->mHandler:Landroid/telephony/gba/GbaService$GbaServiceHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Landroid/telephony/gba/GbaService;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/telephony/gba/GbaService;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/gba/GbaService;->mCallbacks:Landroid/util/SparseArray;

    new-instance v0, Landroid/telephony/gba/GbaService$IGbaServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/gba/GbaService$IGbaServiceWrapper;-><init>(Landroid/telephony/gba/GbaService;Landroid/telephony/gba/GbaService$IGbaServiceWrapper-IA;)V

    iput-object v0, p0, Landroid/telephony/gba/GbaService;->mBinder:Landroid/telephony/gba/GbaService$IGbaServiceWrapper;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GbaService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/gba/GbaService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/telephony/gba/GbaService$GbaServiceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Landroid/telephony/gba/GbaService$GbaServiceHandler;-><init>(Landroid/telephony/gba/GbaService;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/telephony/gba/GbaService;->mHandler:Landroid/telephony/gba/GbaService$GbaServiceHandler;

    const-string v0, "GBA service created"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onAuthenticationRequest(IIILandroid/net/Uri;[BZ)V
    .registers 8

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/telephony/gba/GbaService;->reportAuthenticationFailure(II)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.telephony.gba.GbaService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "GbaService"

    const-string v1, "GbaService Bound."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/gba/GbaService;->mBinder:Landroid/telephony/gba/GbaService$IGbaServiceWrapper;

    return-object v0

    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/gba/GbaService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final reportAuthenticationFailure(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telephony/gba/GbaService;->mCallbacks:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Landroid/telephony/gba/GbaService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/IBootstrapAuthenticationCallback;

    move-object v0, v2

    iget-object v2, p0, Landroid/telephony/gba/GbaService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_20

    if-eqz v0, :cond_1f

    :try_start_15
    invoke-interface {v0, p1, p2}, Landroid/telephony/IBootstrapAuthenticationCallback;->onAuthenticationFailure(II)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_1f

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_1f
    :goto_1f
    return-void

    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public final reportKeysAvailable(I[BLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telephony/gba/GbaService;->mCallbacks:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Landroid/telephony/gba/GbaService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/IBootstrapAuthenticationCallback;

    move-object v0, v2

    iget-object v2, p0, Landroid/telephony/gba/GbaService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_20

    if-eqz v0, :cond_1f

    :try_start_15
    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/IBootstrapAuthenticationCallback;->onKeysAvailable(I[BLjava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_1f

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_1f
    :goto_1f
    return-void

    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v2
.end method
