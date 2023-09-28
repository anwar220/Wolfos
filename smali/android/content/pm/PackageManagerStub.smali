# classes.dex

.class public Landroid/content/pm/PackageManagerStub;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Landroid/content/pm/PackageManagerStub;
    .registers 1

    const-class v0, Landroid/content/pm/PackageManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerStub;

    return-object v0
.end method


# virtual methods
.method public getOneTimeManagerPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, "com.android.permissioncontroller"

    return-object v0
.end method

.method getPermissionControllerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method public isOptimizationMode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
