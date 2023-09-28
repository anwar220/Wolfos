# classes2.dex

.class Landroid/media/MediaRouter2$ManagerCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaRouter2Manager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ManagerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaRouter2;


# direct methods
.method constructor <init>(Landroid/media/MediaRouter2;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .registers 5

    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmClientPackageName(Landroid/media/MediaRouter2;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmLock(Landroid/media/MediaRouter2;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_14
    iget-object v1, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1, p2}, Landroid/media/MediaRouter2;->-$$Nest$fputmDiscoveryPreference(Landroid/media/MediaRouter2;Landroid/media/RouteDiscoveryPreference;)V

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_29

    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$mupdateAllRoutesFromManager(Landroid/media/MediaRouter2;)V

    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-virtual {p2}, Landroid/media/RouteDiscoveryPreference;->getPreferredFeatures()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyPreferredFeaturesChanged(Landroid/media/MediaRouter2;Ljava/util/List;)V

    return-void

    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public onRequestFailed(I)V
    .registers 2

    return-void
.end method

.method public onRoutesAdded(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$mupdateAllRoutesFromManager(Landroid/media/MediaRouter2;)V

    return-void
.end method

.method public onRoutesChanged(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$mupdateAllRoutesFromManager(Landroid/media/MediaRouter2;)V

    return-void
.end method

.method public onRoutesRemoved(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$mupdateAllRoutesFromManager(Landroid/media/MediaRouter2;)V

    return-void
.end method

.method public onSessionReleased(Landroid/media/RoutingSessionInfo;)V
    .registers 5

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "MR2"

    const-string v1, "onSessionReleased: Called on system session. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmClientPackageName(Landroid/media/MediaRouter2;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    new-instance v1, Landroid/media/MediaRouter2$RoutingController;

    const/4 v2, 0x3

    invoke-direct {v1, v0, p1, v2}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;I)V

    invoke-static {v0, v1}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyStop(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method public onSessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .registers 4

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmClientPackageName(Landroid/media/MediaRouter2;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    iget-object v1, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1, p1}, Landroid/media/MediaRouter2;->-$$Nest$mensureClientPackageNameForSystemSession(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    goto :goto_36

    :cond_2f
    new-instance v0, Landroid/media/MediaRouter2$RoutingController;

    iget-object v1, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {v0, v1, p1}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    :goto_36
    iget-object v1, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1, v0}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyControllerUpdated(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method

.method public onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .registers 5

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmClientPackageName(Landroid/media/MediaRouter2;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0, p2}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyTransferFailure(Landroid/media/MediaRouter2;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method public onTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V
    .registers 6

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmClientPackageName(Landroid/media/MediaRouter2;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmClientPackageName(Landroid/media/MediaRouter2;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    return-void

    :cond_2e
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    return-void

    :cond_3d
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    iget-object v1, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1, p1}, Landroid/media/MediaRouter2;->-$$Nest$mensureClientPackageNameForSystemSession(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    iget-object v0, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    iget-object v0, v0, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    goto :goto_5c

    :cond_55
    new-instance v0, Landroid/media/MediaRouter2$RoutingController;

    iget-object v1, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {v0, v1, p1}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    :goto_5c
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v1

    if-eqz v1, :cond_74

    iget-object v1, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    iget-object v1, v1, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    iget-object v2, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2, p2}, Landroid/media/MediaRouter2;->-$$Nest$mensureClientPackageNameForSystemSession(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter2$RoutingController;->setRoutingSessionInfo(Landroid/media/RoutingSessionInfo;)V

    iget-object v1, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    iget-object v1, v1, Landroid/media/MediaRouter2;->mSystemController:Landroid/media/MediaRouter2$RoutingController;

    goto :goto_7b

    :cond_74
    new-instance v1, Landroid/media/MediaRouter2$RoutingController;

    iget-object v2, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-direct {v1, v2, p2}, Landroid/media/MediaRouter2$RoutingController;-><init>(Landroid/media/MediaRouter2;Landroid/media/RoutingSessionInfo;)V

    :goto_7b
    iget-object v2, p0, Landroid/media/MediaRouter2$ManagerCallback;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v2, v0, v1}, Landroid/media/MediaRouter2;->-$$Nest$mnotifyTransfer(Landroid/media/MediaRouter2;Landroid/media/MediaRouter2$RoutingController;Landroid/media/MediaRouter2$RoutingController;)V

    return-void
.end method
