# classes3.dex

.class public final synthetic Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Landroid/permission/IPermissionController;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Landroid/permission/IPermissionController;Landroid/os/UserHandle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda5;->f$0:Landroid/permission/IPermissionController;

    iput-object p2, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda5;->f$1:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda5;->f$0:Landroid/permission/IPermissionController;

    iget-object v1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda5;->f$1:Landroid/os/UserHandle;

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-static {v0, v1, p1}, Landroid/permission/PermissionControllerManager;->lambda$stageAndApplyRuntimePermissionsBackup$7(Landroid/permission/IPermissionController;Landroid/os/UserHandle;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
