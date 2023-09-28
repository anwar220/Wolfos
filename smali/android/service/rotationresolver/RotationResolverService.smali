# classes3.dex

.class public abstract Landroid/service/rotationresolver/RotationResolverService;
.super Landroid/app/Service;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;,
        Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallback;,
        Landroid/service/rotationresolver/RotationResolverService$FailureCodes;
    }
.end annotation


# static fields
.field public static final ROTATION_RESULT_FAILURE_CANCELLED:I = 0x0

.field public static final ROTATION_RESULT_FAILURE_NOT_SUPPORTED:I = 0x4

.field public static final ROTATION_RESULT_FAILURE_PREEMPTED:I = 0x2

.field public static final ROTATION_RESULT_FAILURE_TIMED_OUT:I = 0x1

.field public static final ROTATION_RESULT_FAILURE_UNKNOWN:I = 0x3

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.rotationresolver.RotationResolverService"


# instance fields
.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPendingCallback:Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMainThreadHandler(Landroid/service/rotationresolver/RotationResolverService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/rotationresolver/RotationResolverService;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresolveRotation(Landroid/service/rotationresolver/RotationResolverService;Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/ICancellationSignal;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/service/rotationresolver/RotationResolverService;->resolveRotation(Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/ICancellationSignal;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendFailureResult(Landroid/service/rotationresolver/RotationResolverService;Landroid/service/rotationresolver/IRotationResolverCallback;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/rotationresolver/RotationResolverService;->sendFailureResult(Landroid/service/rotationresolver/IRotationResolverCallback;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendRotationResult(Landroid/service/rotationresolver/RotationResolverService;Landroid/service/rotationresolver/IRotationResolverCallback;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/rotationresolver/RotationResolverService;->sendRotationResult(Landroid/service/rotationresolver/IRotationResolverCallback;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/rotationresolver/RotationResolverService;->mMainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method private reportFailures(Landroid/service/rotationresolver/IRotationResolverCallback;I)V
    .registers 4

    :try_start_0
    invoke-interface {p1, p2}, Landroid/service/rotationresolver/IRotationResolverCallback;->onFailure(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_8
    return-void
.end method

.method private resolveRotation(Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/ICancellationSignal;)V
    .registers 11

    iget-object v0, p0, Landroid/service/rotationresolver/RotationResolverService;->mPendingCallback:Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/service/rotationresolver/RotationResolverService;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_21

    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/service/rotationresolver/RotationResolverService;->mPendingCallback:Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;

    invoke-static {v2}, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->-$$Nest$fgetmExpirationTime(Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_21

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/service/rotationresolver/RotationResolverService;->reportFailures(Landroid/service/rotationresolver/IRotationResolverCallback;I)V

    return-void

    :cond_21
    new-instance v0, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/service/rotationresolver/RotationResolutionRequest;->getTimeoutMillis()J

    move-result-wide v3

    add-long v4, v1, v3

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;-><init>(Landroid/service/rotationresolver/IRotationResolverCallback;Landroid/service/rotationresolver/RotationResolverService;JLandroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper-IA;)V

    iput-object v0, p0, Landroid/service/rotationresolver/RotationResolverService;->mPendingCallback:Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;

    invoke-static {p3}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v0

    iput-object v0, p0, Landroid/service/rotationresolver/RotationResolverService;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v1, p0, Landroid/service/rotationresolver/RotationResolverService;->mPendingCallback:Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;

    invoke-virtual {p0, p2, v0, v1}, Landroid/service/rotationresolver/RotationResolverService;->onResolveRotation(Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallback;)V

    return-void
.end method

.method private sendFailureResult(Landroid/service/rotationresolver/IRotationResolverCallback;I)V
    .registers 4

    iget-object v0, p0, Landroid/service/rotationresolver/RotationResolverService;->mPendingCallback:Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;

    if-eqz v0, :cond_10

    invoke-static {v0}, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->-$$Nest$fgetmCallback(Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;)Landroid/service/rotationresolver/IRotationResolverCallback;

    move-result-object v0

    if-ne p1, v0, :cond_10

    invoke-direct {p0, p1, p2}, Landroid/service/rotationresolver/RotationResolverService;->reportFailures(Landroid/service/rotationresolver/IRotationResolverCallback;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/rotationresolver/RotationResolverService;->mPendingCallback:Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;

    :cond_10
    return-void
.end method

.method private sendRotationResult(Landroid/service/rotationresolver/IRotationResolverCallback;I)V
    .registers 4

    iget-object v0, p0, Landroid/service/rotationresolver/RotationResolverService;->mPendingCallback:Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;

    if-eqz v0, :cond_15

    invoke-static {v0}, Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;->-$$Nest$fgetmCallback(Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;)Landroid/service/rotationresolver/IRotationResolverCallback;

    move-result-object v0

    if-ne v0, p1, :cond_15

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/rotationresolver/RotationResolverService;->mPendingCallback:Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallbackWrapper;

    :try_start_d
    invoke-interface {p1, p2}, Landroid/service/rotationresolver/IRotationResolverCallback;->onSuccess(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_15
    :goto_15
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.service.rotationresolver.RotationResolverService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Landroid/service/rotationresolver/RotationResolverService$1;

    invoke-direct {v0, p0}, Landroid/service/rotationresolver/RotationResolverService$1;-><init>(Landroid/service/rotationresolver/RotationResolverService;)V

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onResolveRotation(Landroid/service/rotationresolver/RotationResolutionRequest;Landroid/os/CancellationSignal;Landroid/service/rotationresolver/RotationResolverService$RotationResolverCallback;)V
.end method
