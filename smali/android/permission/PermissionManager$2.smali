# classes3.dex

.class Landroid/permission/PermissionManager$2;
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
        "Landroid/permission/PermissionManager$PackageNamePermissionQuery;",
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
.method public bypass(Landroid/permission/PermissionManager$PackageNamePermissionQuery;)Z
    .registers 3

    iget v0, p1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->userId:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public bridge synthetic bypass(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;

    invoke-virtual {p0, p1}, Landroid/permission/PermissionManager$2;->bypass(Landroid/permission/PermissionManager$PackageNamePermissionQuery;)Z

    move-result p1

    return p1
.end method

.method public recompute(Landroid/permission/PermissionManager$PackageNamePermissionQuery;)Ljava/lang/Integer;
    .registers 5

    iget-object v0, p1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->permName:Ljava/lang/String;

    iget-object v1, p1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->pkgName:Ljava/lang/String;

    iget v2, p1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;->userId:I

    invoke-static {v0, v1, v2}, Landroid/permission/PermissionManager;->-$$Nest$smcheckPackageNamePermissionUncached(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/permission/PermissionManager$PackageNamePermissionQuery;

    invoke-virtual {p0, p1}, Landroid/permission/PermissionManager$2;->recompute(Landroid/permission/PermissionManager$PackageNamePermissionQuery;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
