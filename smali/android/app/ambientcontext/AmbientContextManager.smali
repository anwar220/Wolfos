# classes.dex

.class public final Landroid/app/ambientcontext/AmbientContextManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ambientcontext/AmbientContextManager$StatusCode;
    }
.end annotation


# static fields
.field public static final EXTRA_AMBIENT_CONTEXT_EVENTS:Ljava/lang/String; = "android.app.ambientcontext.extra.AMBIENT_CONTEXT_EVENTS"

.field public static final STATUS_ACCESS_DENIED:I = 0x5

.field public static final STATUS_MICROPHONE_DISABLED:I = 0x4

.field public static final STATUS_NOT_SUPPORTED:I = 0x2

.field public static final STATUS_RESPONSE_BUNDLE_KEY:Ljava/lang/String; = "android.app.ambientcontext.AmbientContextStatusBundleKey"

.field public static final STATUS_SERVICE_UNAVAILABLE:I = 0x3

.field public static final STATUS_SUCCESS:I = 0x1

.field public static final STATUS_UNKNOWN:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/app/ambientcontext/IAmbientContextManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ambientcontext/IAmbientContextManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ambientcontext/AmbientContextManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/ambientcontext/AmbientContextManager;->mService:Landroid/app/ambientcontext/IAmbientContextManager;

    return-void
.end method

.method public static getEventsFromIntent(Landroid/content/Intent;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/ambientcontext/AmbientContextEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "android.app.ambientcontext.extra.AMBIENT_CONTEXT_EVENTS"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static integerSetToIntArray(Ljava/util/Set;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v1

    move v1, v4

    goto :goto_b

    :cond_21
    return-object v0
.end method

.method static synthetic lambda$queryAmbientContextServiceStatus$0(Ljava/util/function/Consumer;I)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$queryAmbientContextServiceStatus$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 7

    const-string v0, "android.app.ambientcontext.AmbientContextStatusBundleKey"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_a
    new-instance v3, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1, v0}, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_17

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_17
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method static synthetic lambda$registerObserver$2(Ljava/util/function/Consumer;I)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$registerObserver$3(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 7

    const-string v0, "android.app.ambientcontext.AmbientContextStatusBundleKey"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_a
    new-instance v3, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v0}, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_17

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_17
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method


# virtual methods
.method public queryAmbientContextServiceStatus(Ljava/util/Set;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p3}, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    iget-object v1, p0, Landroid/app/ambientcontext/AmbientContextManager;->mService:Landroid/app/ambientcontext/IAmbientContextManager;

    invoke-static {p1}, Landroid/app/ambientcontext/AmbientContextManager;->integerSetToIntArray(Ljava/util/Set;)[I

    move-result-object v2

    iget-object v3, p0, Landroid/app/ambientcontext/AmbientContextManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Landroid/app/ambientcontext/IAmbientContextManager;->queryServiceStatus([ILjava/lang/String;Landroid/os/RemoteCallback;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1b

    nop

    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ambientcontext/AmbientContextEventRequest;",
            "Landroid/app/PendingIntent;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    :try_start_9
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p3, p4}, Landroid/app/ambientcontext/AmbientContextManager$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    iget-object v1, p0, Landroid/app/ambientcontext/AmbientContextManager;->mService:Landroid/app/ambientcontext/IAmbientContextManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/app/ambientcontext/IAmbientContextManager;->registerObserver(Landroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_18} :catch_1a

    nop

    return-void

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startConsentActivity(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/ambientcontext/AmbientContextManager;->mService:Landroid/app/ambientcontext/IAmbientContextManager;

    invoke-static {p1}, Landroid/app/ambientcontext/AmbientContextManager;->integerSetToIntArray(Ljava/util/Set;)[I

    move-result-object v1

    iget-object v2, p0, Landroid/app/ambientcontext/AmbientContextManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/app/ambientcontext/IAmbientContextManager;->startConsentActivity([ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    nop

    return-void

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterObserver()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/app/ambientcontext/AmbientContextManager;->mService:Landroid/app/ambientcontext/IAmbientContextManager;

    iget-object v1, p0, Landroid/app/ambientcontext/AmbientContextManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/ambientcontext/IAmbientContextManager;->unregisterObserver(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    nop

    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
