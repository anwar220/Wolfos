# classes4.dex

.class public Landroid/window/WindowContext;
.super Landroid/content/ContextWrapper;

# interfaces
.implements Landroid/window/WindowProvider;


# instance fields
.field private final mCallbacksController:Landroid/content/ComponentCallbacksController;

.field private final mController:Landroid/window/WindowContextController;

.field private final mOptions:Landroid/os/Bundle;

.field private final mType:I

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/content/ComponentCallbacksController;

    invoke-direct {v0}, Landroid/content/ComponentCallbacksController;-><init>()V

    iput-object v0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    iput p2, p0, Landroid/window/WindowContext;->mType:I

    iput-object p3, p0, Landroid/window/WindowContext;->mOptions:Landroid/os/Bundle;

    invoke-static {p0}, Landroid/view/WindowManagerImpl;->createWindowContextWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/window/WindowContext;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Landroid/window/WindowContext;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/window/WindowTokenClient;

    new-instance v1, Landroid/window/WindowContextController;

    invoke-direct {v1, v0}, Landroid/window/WindowContextController;-><init>(Landroid/window/WindowTokenClient;)V

    iput-object v1, p0, Landroid/window/WindowContext;->mController:Landroid/window/WindowContextController;

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attachToDisplayArea()V
    .registers 5

    iget-object v0, p0, Landroid/window/WindowContext;->mController:Landroid/window/WindowContextController;

    iget v1, p0, Landroid/window/WindowContext;->mType:I

    invoke-virtual {p0}, Landroid/window/WindowContext;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Landroid/window/WindowContext;->mOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/window/WindowContextController;->attachToDisplayArea(IILandroid/os/Bundle;)V

    return-void
.end method

.method public destroy()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0}, Landroid/content/ComponentCallbacksController;->clearCallbacks()V

    invoke-virtual {p0}, Landroid/window/WindowContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->destroy()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    nop

    return-void

    :catchall_11
    move-exception v0

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    throw v0
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/window/WindowContext;->release()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/window/WindowContext;->mWindowManager:Landroid/view/WindowManager;

    return-object v0

    :cond_c
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWindowContextOptions()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/window/WindowContext;->mOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public getWindowType()I
    .registers 2

    iget v0, p0, Landroid/window/WindowContext;->mType:I

    return v0
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3

    iget-object v0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->registerCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Landroid/window/WindowContext;->mController:Landroid/window/WindowContextController;

    invoke-virtual {v0}, Landroid/window/WindowContextController;->detachIfNeeded()V

    invoke-virtual {p0}, Landroid/window/WindowContext;->destroy()V

    return-void
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 3

    iget-object v0, p0, Landroid/window/WindowContext;->mCallbacksController:Landroid/content/ComponentCallbacksController;

    invoke-virtual {v0, p1}, Landroid/content/ComponentCallbacksController;->unregisterCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method
