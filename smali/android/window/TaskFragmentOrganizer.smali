# classes4.dex

.class public Landroid/window/TaskFragmentOrganizer;
.super Landroid/window/WindowOrganizer;


# static fields
.field private static final KEY_ERROR_CALLBACK_EXCEPTION:Ljava/lang/String; = "fragment_exception"

.field private static final KEY_ERROR_CALLBACK_OP_TYPE:Ljava/lang/String; = "operation_type"

.field private static final KEY_ERROR_CALLBACK_TASK_FRAGMENT_INFO:Ljava/lang/String; = "task_fragment_info"


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mInterface:Landroid/window/ITaskFragmentOrganizer;

.field private final mToken:Landroid/window/TaskFragmentOrganizerToken;


# direct methods
.method static bridge synthetic -$$Nest$fgetmExecutor(Landroid/window/TaskFragmentOrganizer;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/window/TaskFragmentOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 4

    invoke-direct {p0}, Landroid/window/WindowOrganizer;-><init>()V

    new-instance v0, Landroid/window/TaskFragmentOrganizer$1;

    invoke-direct {v0, p0}, Landroid/window/TaskFragmentOrganizer$1;-><init>(Landroid/window/TaskFragmentOrganizer;)V

    iput-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    new-instance v1, Landroid/window/TaskFragmentOrganizerToken;

    invoke-direct {v1, v0}, Landroid/window/TaskFragmentOrganizerToken;-><init>(Landroid/window/ITaskFragmentOrganizer;)V

    iput-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mToken:Landroid/window/TaskFragmentOrganizerToken;

    iput-object p1, p0, Landroid/window/TaskFragmentOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private getController()Landroid/window/ITaskFragmentOrganizerController;
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/window/TaskFragmentOrganizer;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    invoke-interface {v0}, Landroid/window/IWindowOrganizerController;->getTaskFragmentOrganizerController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static putErrorInfoInBundle(Ljava/lang/Throwable;Landroid/window/TaskFragmentInfo;I)Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fragment_exception"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    if-eqz p1, :cond_12

    const-string/jumbo v1, "task_fragment_info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_12
    const-string/jumbo v1, "operation_type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .registers 3

    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-virtual {p1, v0}, Landroid/window/WindowContainerTransaction;->setTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Landroid/window/WindowContainerTransaction;

    invoke-super {p0, p1}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getOrganizerToken()Landroid/window/TaskFragmentOrganizerToken;
    .registers 2

    iget-object v0, p0, Landroid/window/TaskFragmentOrganizer;->mToken:Landroid/window/TaskFragmentOrganizerToken;

    return-object v0
.end method

.method public isActivityEmbedded(Landroid/os/IBinder;)Z
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/window/ITaskFragmentOrganizerController;->isActivityEmbedded(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public onActivityReparentToTask(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .registers 4

    return-void
.end method

.method public onTaskFragmentAppeared(Landroid/window/TaskFragmentInfo;)V
    .registers 2

    return-void
.end method

.method public onTaskFragmentError(Landroid/os/IBinder;Landroid/window/TaskFragmentInfo;ILjava/lang/Throwable;)V
    .registers 5

    invoke-virtual {p0, p1, p4}, Landroid/window/TaskFragmentOrganizer;->onTaskFragmentError(Landroid/os/IBinder;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onTaskFragmentError(Landroid/os/IBinder;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method

.method public onTaskFragmentInfoChanged(Landroid/window/TaskFragmentInfo;)V
    .registers 2

    return-void
.end method

.method public onTaskFragmentParentInfoChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    .registers 3

    return-void
.end method

.method public onTaskFragmentVanished(Landroid/window/TaskFragmentInfo;)V
    .registers 2

    return-void
.end method

.method public registerOrganizer()V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1}, Landroid/window/ITaskFragmentOrganizerController;->registerOrganizer(Landroid/window/ITaskFragmentOrganizer;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    nop

    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerRemoteAnimations(ILandroid/view/RemoteAnimationDefinition;)V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1, p1, p2}, Landroid/window/ITaskFragmentOrganizerController;->registerRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;ILandroid/view/RemoteAnimationDefinition;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    nop

    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterOrganizer()V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1}, Landroid/window/ITaskFragmentOrganizerController;->unregisterOrganizer(Landroid/window/ITaskFragmentOrganizer;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    nop

    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterRemoteAnimations(I)V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/window/TaskFragmentOrganizer;->getController()Landroid/window/ITaskFragmentOrganizerController;

    move-result-object v0

    iget-object v1, p0, Landroid/window/TaskFragmentOrganizer;->mInterface:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v0, v1, p1}, Landroid/window/ITaskFragmentOrganizerController;->unregisterRemoteAnimations(Landroid/window/ITaskFragmentOrganizer;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    nop

    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
