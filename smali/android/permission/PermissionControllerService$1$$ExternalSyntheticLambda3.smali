# classes3.dex

.class public final synthetic Landroid/permission/PermissionControllerService$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Landroid/permission/PermissionControllerService$1;->lambda$revokeRuntimePermissions$0(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
