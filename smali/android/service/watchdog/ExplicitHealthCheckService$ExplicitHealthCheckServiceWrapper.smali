# classes3.dex

.class Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;
.super Landroid/service/watchdog/IExplicitHealthCheckService$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/watchdog/ExplicitHealthCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExplicitHealthCheckServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/watchdog/ExplicitHealthCheckService;


# direct methods
.method private constructor <init>(Landroid/service/watchdog/ExplicitHealthCheckService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-direct {p0}, Landroid/service/watchdog/IExplicitHealthCheckService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/watchdog/ExplicitHealthCheckService;Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService;)V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fgetmHandler(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getRequestedPackages(Landroid/os/RemoteCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fgetmHandler(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda4;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getSupportedPackages(Landroid/os/RemoteCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fgetmHandler(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda3;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$cancel$2$android-service-watchdog-ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-virtual {v0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService;->onCancelHealthCheck(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$getRequestedPackages$4$android-service-watchdog-ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper(Landroid/os/RemoteCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-virtual {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->onGetRequestedPackages()Ljava/util/List;

    move-result-object v0

    const-string v1, "Requested  package list must be non-null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "android.service.watchdog.extra.requested_packages"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$getSupportedPackages$3$android-service-watchdog-ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper(Landroid/os/RemoteCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-virtual {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->onGetSupportedPackages()Ljava/util/List;

    move-result-object v0

    const-string v1, "Supported package list must be non-null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "android.service.watchdog.extra.supported_packages"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$request$1$android-service-watchdog-ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-virtual {v0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService;->onRequestHealthCheck(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setCallback$0$android-service-watchdog-ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper(Landroid/os/RemoteCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fputmCallback(Landroid/service/watchdog/ExplicitHealthCheckService;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public request(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fgetmHandler(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCallback(Landroid/os/RemoteCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;->this$0:Landroid/service/watchdog/ExplicitHealthCheckService;

    invoke-static {v0}, Landroid/service/watchdog/ExplicitHealthCheckService;->-$$Nest$fgetmHandler(Landroid/service/watchdog/ExplicitHealthCheckService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/service/watchdog/ExplicitHealthCheckService$ExplicitHealthCheckServiceWrapper;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
