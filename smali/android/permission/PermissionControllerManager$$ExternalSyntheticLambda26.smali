# classes3.dex

.class public final synthetic Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda26;->f$0:Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda26;->f$0:Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Landroid/permission/PermissionControllerManager;->lambda$getPermissionUsages$22(Landroid/permission/PermissionControllerManager$OnPermissionUsageResultCallback;Ljava/util/List;Ljava/lang/Throwable;)V

    return-void
.end method
