# classes3.dex

.class public abstract Landroid/service/smartspace/SmartspaceService;
.super Landroid/app/Service;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/smartspace/SmartspaceService$CallbackWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.smartspace.SmartspaceService"

.field private static final TAG:Ljava/lang/String; = "SmartspaceService"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mInterface:Landroid/service/smartspace/ISmartspaceService;

.field private final mSessionCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/smartspace/SmartspaceSessionId;",
            "Ljava/util/ArrayList<",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/service/smartspace/SmartspaceService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/smartspace/SmartspaceService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdoCreateSmartspaceSession(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->doCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoDestroy(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/smartspace/SmartspaceService;->doDestroy(Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoRegisterSmartspaceUpdates(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->doRegisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoRequestPredictionUpdate(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/smartspace/SmartspaceService;->doRequestPredictionUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoUnregisterSmartspaceUpdates(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->doUnregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    new-instance v0, Landroid/service/smartspace/SmartspaceService$1;

    invoke-direct {v0, p0}, Landroid/service/smartspace/SmartspaceService$1;-><init>(Landroid/service/smartspace/SmartspaceService;)V

    iput-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mInterface:Landroid/service/smartspace/ISmartspaceService;

    return-void
.end method

.method private doCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 5

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->onCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method private doDestroy(Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 4

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    new-instance v1, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_15
    invoke-virtual {p0, p1}, Landroid/service/smartspace/SmartspaceService;->onDestroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method private doRegisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 7

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register for updates for unknown session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartspaceService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    invoke-direct {p0, v0, p2}, Landroid/service/smartspace/SmartspaceService;->findCallbackWrapper(Ljava/util/ArrayList;Landroid/app/smartspace/ISmartspaceCallback;)Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    move-result-object v1

    if-nez v1, :cond_36

    new-instance v2, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    new-instance v3, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda1;-><init>(Landroid/service/smartspace/SmartspaceService;Ljava/util/ArrayList;)V

    invoke-direct {v2, p2, v3}, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;-><init>(Landroid/app/smartspace/ISmartspaceCallback;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    return-void
.end method

.method private doRequestPredictionUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 4

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p0, p1}, Landroid/service/smartspace/SmartspaceService;->onRequestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V

    :cond_13
    return-void
.end method

.method private doUnregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unregister for updates for unknown session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartspaceService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_23
    invoke-direct {p0, v0, p2}, Landroid/service/smartspace/SmartspaceService;->findCallbackWrapper(Ljava/util/ArrayList;Landroid/app/smartspace/ISmartspaceCallback;)Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/service/smartspace/SmartspaceService;->removeCallbackWrapper(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V

    return-void
.end method

.method private findCallbackWrapper(Ljava/util/ArrayList;Landroid/app/smartspace/ISmartspaceCallback;)Landroid/service/smartspace/SmartspaceService$CallbackWrapper;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;",
            ">;",
            "Landroid/app/smartspace/ISmartspaceCallback;",
            ")",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1e

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    invoke-virtual {v1, p2}, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->isCallback(Landroid/app/smartspace/ISmartspaceCallback;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    return-object v1

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method private removeCallbackWrapper(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;",
            ">;",
            "Landroid/service/smartspace/SmartspaceService$CallbackWrapper;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_c

    if-nez p2, :cond_5

    goto :goto_c

    :cond_5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->destroy()V

    return-void

    :cond_c
    :goto_c
    return-void
.end method


# virtual methods
.method synthetic lambda$doRegisterSmartspaceUpdates$0$android-service-smartspace-SmartspaceService(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->removeCallbackWrapper(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V

    return-void
.end method

.method synthetic lambda$doRegisterSmartspaceUpdates$1$android-service-smartspace-SmartspaceService(Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V
    .registers 5

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/service/smartspace/SmartspaceService$$ExternalSyntheticLambda2;-><init>(Landroid/service/smartspace/SmartspaceService;Ljava/util/ArrayList;Landroid/service/smartspace/SmartspaceService$CallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.service.smartspace.SmartspaceService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mInterface:Landroid/service/smartspace/ISmartspaceService;

    invoke-interface {v0}, Landroid/service/smartspace/ISmartspaceService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.service.smartspace.SmartspaceService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartspaceService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public abstract onCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V
.end method

.method public abstract onDestroy(Landroid/app/smartspace/SmartspaceSessionId;)V
.end method

.method public abstract onDestroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V
.end method

.method public abstract onRequestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V
.end method

.method public final updateSmartspaceTargets(Landroid/app/smartspace/SmartspaceSessionId;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/smartspace/SmartspaceSessionId;",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceTarget;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService;->mSessionCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;

    invoke-virtual {v2, p2}, Landroid/service/smartspace/SmartspaceService$CallbackWrapper;->accept(Ljava/util/List;)V

    goto :goto_e

    :cond_1e
    return-void
.end method
