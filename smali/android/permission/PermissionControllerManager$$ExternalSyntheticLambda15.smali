# classes3.dex

.class public final synthetic Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/permission/IPermissionController;

.field public final synthetic f$1:Ljava/io/FileDescriptor;

.field public final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/permission/IPermissionController;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda15;->f$0:Landroid/permission/IPermissionController;

    iput-object p2, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda15;->f$1:Ljava/io/FileDescriptor;

    iput-object p3, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda15;->f$2:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda15;->f$0:Landroid/permission/IPermissionController;

    iget-object v1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda15;->f$1:Ljava/io/FileDescriptor;

    iget-object v2, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda15;->f$2:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/permission/PermissionControllerManager;->lambda$dump$12(Landroid/permission/IPermissionController;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    return-void
.end method
