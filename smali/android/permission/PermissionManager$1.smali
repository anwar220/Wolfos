# classes3.dex

.class Landroid/permission/PermissionManager$1;
.super Landroid/app/PropertyInvalidatedCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Landroid/permission/PermissionManager$PermissionQuery;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public recompute(Landroid/permission/PermissionManager$PermissionQuery;)Ljava/lang/Integer;
    .registers 5

    iget-object v0, p1, Landroid/permission/PermissionManager$PermissionQuery;->permission:Ljava/lang/String;

    iget v1, p1, Landroid/permission/PermissionManager$PermissionQuery;->pid:I

    iget v2, p1, Landroid/permission/PermissionManager$PermissionQuery;->uid:I

    invoke-static {v0, v1, v2}, Landroid/permission/PermissionManager;->-$$Nest$smcheckPermissionUncached(Ljava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/permission/PermissionManager$PermissionQuery;

    invoke-virtual {p0, p1}, Landroid/permission/PermissionManager$1;->recompute(Landroid/permission/PermissionManager$PermissionQuery;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
