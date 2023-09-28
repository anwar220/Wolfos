# classes.dex

.class public final Landroid/app/admin/ManagedProfileProvisioningParams$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/ManagedProfileProvisioningParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAccountToMigrate:Landroid/accounts/Account;

.field private mAdminExtras:Landroid/os/PersistableBundle;

.field private mKeepingAccountOnMigration:Z

.field private mLeaveAllSystemAppsEnabled:Z

.field private mOrganizationOwnedProvisioning:Z

.field private final mOwnerName:Ljava/lang/String;

.field private final mProfileAdminComponentName:Landroid/content/ComponentName;

.field private mProfileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mProfileAdminComponentName:Landroid/content/ComponentName;

    iput-object p2, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mOwnerName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Landroid/app/admin/ManagedProfileProvisioningParams;
    .registers 12

    new-instance v10, Landroid/app/admin/ManagedProfileProvisioningParams;

    iget-object v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mProfileAdminComponentName:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mOwnerName:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mProfileName:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mAccountToMigrate:Landroid/accounts/Account;

    iget-boolean v5, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mLeaveAllSystemAppsEnabled:Z

    iget-boolean v6, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mOrganizationOwnedProvisioning:Z

    iget-boolean v7, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mKeepingAccountOnMigration:Z

    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mAdminExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_15

    goto :goto_1a

    :cond_15
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    :goto_1a
    move-object v8, v0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/app/admin/ManagedProfileProvisioningParams;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ZZZLandroid/os/PersistableBundle;Landroid/app/admin/ManagedProfileProvisioningParams-IA;)V

    return-object v10
.end method

.method public setAccountToMigrate(Landroid/accounts/Account;)Landroid/app/admin/ManagedProfileProvisioningParams$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mAccountToMigrate:Landroid/accounts/Account;

    return-object p0
.end method

.method public setAdminExtras(Landroid/os/PersistableBundle;)Landroid/app/admin/ManagedProfileProvisioningParams$Builder;
    .registers 3

    if-eqz p1, :cond_8

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0, p1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    goto :goto_d

    :cond_8
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    :goto_d
    iput-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mAdminExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public setKeepingAccountOnMigration(Z)Landroid/app/admin/ManagedProfileProvisioningParams$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mKeepingAccountOnMigration:Z

    return-object p0
.end method

.method public setLeaveAllSystemAppsEnabled(Z)Landroid/app/admin/ManagedProfileProvisioningParams$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mLeaveAllSystemAppsEnabled:Z

    return-object p0
.end method

.method public setOrganizationOwnedProvisioning(Z)Landroid/app/admin/ManagedProfileProvisioningParams$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mOrganizationOwnedProvisioning:Z

    return-object p0
.end method

.method public setProfileName(Ljava/lang/String;)Landroid/app/admin/ManagedProfileProvisioningParams$Builder;
    .registers 2

    iput-object p1, p0, Landroid/app/admin/ManagedProfileProvisioningParams$Builder;->mProfileName:Ljava/lang/String;

    return-object p0
.end method
