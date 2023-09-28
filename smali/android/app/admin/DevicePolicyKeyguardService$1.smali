# classes.dex

.class Landroid/app/admin/DevicePolicyKeyguardService$1;
.super Landroid/app/admin/IKeyguardClient$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyKeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/admin/DevicePolicyKeyguardService;


# direct methods
.method constructor <init>(Landroid/app/admin/DevicePolicyKeyguardService;)V
    .registers 2

    iput-object p1, p0, Landroid/app/admin/DevicePolicyKeyguardService$1;->this$0:Landroid/app/admin/DevicePolicyKeyguardService;

    invoke-direct {p0}, Landroid/app/admin/IKeyguardClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateKeyguardSurface$0$android-app-admin-DevicePolicyKeyguardService$1(Landroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Landroid/app/admin/DevicePolicyKeyguardService$1;->this$0:Landroid/app/admin/DevicePolicyKeyguardService;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyKeyguardService;->onCreateKeyguardSurface(Landroid/os/IBinder;)Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v0

    :try_start_6
    iget-object v1, p0, Landroid/app/admin/DevicePolicyKeyguardService$1;->this$0:Landroid/app/admin/DevicePolicyKeyguardService;

    invoke-static {v1}, Landroid/app/admin/DevicePolicyKeyguardService;->-$$Nest$fgetmCallback(Landroid/app/admin/DevicePolicyKeyguardService;)Landroid/app/admin/IKeyguardCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/admin/IKeyguardCallback;->onRemoteContentReady(Landroid/view/SurfaceControlViewHost$SurfacePackage;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception v1

    const-string v2, "DevicePolicyKeyguardService"

    const-string v3, "Failed to return created SurfacePackage"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    return-void
.end method

.method public onCreateKeyguardSurface(Landroid/os/IBinder;Landroid/app/admin/IKeyguardCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/app/admin/DevicePolicyKeyguardService$1;->this$0:Landroid/app/admin/DevicePolicyKeyguardService;

    invoke-static {v0, p2}, Landroid/app/admin/DevicePolicyKeyguardService;->-$$Nest$fputmCallback(Landroid/app/admin/DevicePolicyKeyguardService;Landroid/app/admin/IKeyguardCallback;)V

    iget-object v0, p0, Landroid/app/admin/DevicePolicyKeyguardService$1;->this$0:Landroid/app/admin/DevicePolicyKeyguardService;

    invoke-static {v0}, Landroid/app/admin/DevicePolicyKeyguardService;->-$$Nest$fgetmHandler(Landroid/app/admin/DevicePolicyKeyguardService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/admin/DevicePolicyKeyguardService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/admin/DevicePolicyKeyguardService$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/admin/DevicePolicyKeyguardService$1;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
