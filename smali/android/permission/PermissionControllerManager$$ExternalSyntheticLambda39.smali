# classes3.dex

.class public final synthetic Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Ljava/io/FileDescriptor;

.field public final synthetic f$1:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda39;->f$0:Ljava/io/FileDescriptor;

    iput-object p2, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda39;->f$1:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda39;->f$0:Ljava/io/FileDescriptor;

    iget-object v1, p0, Landroid/permission/PermissionControllerManager$$ExternalSyntheticLambda39;->f$1:[Ljava/lang/String;

    check-cast p1, Landroid/permission/IPermissionController;

    invoke-static {v0, v1, p1}, Landroid/permission/PermissionControllerManager;->lambda$dump$13(Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/permission/IPermissionController;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
