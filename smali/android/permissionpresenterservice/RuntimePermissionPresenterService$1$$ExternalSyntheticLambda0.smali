# classes3.dex

.class public final synthetic Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/os/RemoteCallback;

    invoke-static {p1, p2, p3}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$1;->lambda$getAppPermissions$0(Ljava/lang/Object;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    return-void
.end method
