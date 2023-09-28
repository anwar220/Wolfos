# classes3.dex

.class public interface abstract Landroid/os/TurboSchedMonitor;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Landroid/os/TurboSchedMonitor;
    .registers 1

    const-class v0, Landroid/os/TurboSchedMonitor;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TurboSchedMonitor;

    return-object v0
.end method


# virtual methods
.method public addTid(I)V
    .registers 2

    return-void
.end method

.method public breakThermlimit(IJ)V
    .registers 4

    return-void
.end method

.method public enableCoreAppOptimizer(I)V
    .registers 2

    return-void
.end method

.method public getAppToken()V
    .registers 1

    return-void
.end method

.method public getBoostDuration()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCoreAppFrameDealyThreshold()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCoreAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public handleCallbackDelay()V
    .registers 1

    return-void
.end method

.method public isCoreApp(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isCoreAppOptimizerEnabled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isDebugMode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public monitorAnimationCallback(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public monitorFrameDelay(J)V
    .registers 3

    return-void
.end method

.method public monitorInputEvent(Landroid/view/InputEvent;)V
    .registers 2

    return-void
.end method

.method public notifyOnScroll(Z)V
    .registers 2

    return-void
.end method

.method public recordFrameStart(IJJ)V
    .registers 6

    return-void
.end method

.method public releaseAppToken()V
    .registers 1

    return-void
.end method

.method public setBoostDuration(IJ)V
    .registers 4

    return-void
.end method

.method public setCoreAppFrameDealyThreshold(IF)V
    .registers 3

    return-void
.end method

.method public setDebugMode(I)V
    .registers 2

    return-void
.end method

.method public setDrawFrameFinished()V
    .registers 1

    return-void
.end method

.method public setForegroundActivity(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public triggerBoostAction()V
    .registers 1

    return-void
.end method

.method public triggerBoostAction(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method
