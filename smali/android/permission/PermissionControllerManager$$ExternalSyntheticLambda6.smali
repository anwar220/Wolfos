# classes3.dex

.class public final synthetic Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/permission/IPermissionController;

    invoke-static {p1}, Landroid/permission/PermissionControllerManager;->lambda$grantOrUpgradeDefaultRuntimePermissions$23(Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
