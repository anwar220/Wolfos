# classes.dex

.class public final Landroid/app/admin/ManagedProfileProvisioningParams;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/ManagedProfileProvisioningParams$Builder;
    }
.end annotation


# static fields
.field private static final ACCOUNT_TO_MIGRATE_PROVIDED_PARAM:Ljava/lang/String; = "ACCOUNT_TO_MIGRATE_PROVIDED"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/ManagedProfileProvisioningParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_MIGRATED_ACCOUNT_PARAM:Ljava/lang/String; = "KEEP_MIGRATED_ACCOUNT"

.field private static final LEAVE_ALL_SYSTEM_APPS_ENABLED_PARAM:Ljava/lang/String; = "LEAVE_ALL_SYSTEM_APPS_ENABLED"

.field private static final ORGANIZATION_OWNED_PROVISIONING_PARAM:Ljava/lang/String; = "ORGANIZATION_OWNED_PROVISIONING"


# instance fields
.field private final mAccountToMigrate:Landroid/accounts/Account;

.field private final mAdminExtras:Landroid/os/PersistableBundle;

.field private final mKeepAccountOnMigration:Z

.field private final mLeaveAllSystemAppsEnabled:Z

.field private final mOrganizationOwnedProvisioning:Z

.field private final mOwnerName:Ljava/lang/String;

.field private final mProfileAdminComponentName:Landroid/content/ComponentName;

.field private final mProfileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/admin/ManagedProfileProvisioningParams$1;

    invoke-direct {v0}, Landroid/app/admin/ManagedProfileProvisioningParams$1;-><init>()V

    sput-object v0, Landroid/app/admin/ManagedProfileProvisioningParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ZZZLandroid/os/PersistableBundle;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileAdminComponentName:Landroid/content/ComponentName;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOwnerName:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileName:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAccountToMigrate:Landroid/accounts/Account;

    iput-boolean p5, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    iput-boolean p6, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOrganizationOwnedProvisioning:Z

    iput-boolean p7, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mKeepAccountOnMigration:Z

    iput-object p8, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAdminExtras:Landroid/os/PersistableBundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ZZZLandroid/os/PersistableBundle;Landroid/app/admin/ManagedProfileProvisioningParams-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/app/admin/ManagedProfileProvisioningParams;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ZZZLandroid/os/PersistableBundle;)V

    return-void
.end method

.method private logParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    nop

    const/16 v0, 0xc5

    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    iget-object v2, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v3

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountToMigrate()Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAccountToMigrate:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAdminExtras()Landroid/os/PersistableBundle;
    .registers 3

    new-instance v0, Landroid/os/PersistableBundle;

    iget-object v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAdminExtras:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public getOwnerName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOwnerName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileAdminComponentName()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileAdminComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileName:Ljava/lang/String;

    return-object v0
.end method

.method public isKeepingAccountOnMigration()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mKeepAccountOnMigration:Z

    return v0
.end method

.method public isLeaveAllSystemAppsEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    return v0
.end method

.method public isOrganizationOwnedProvisioning()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOrganizationOwnedProvisioning:Z

    return v0
.end method

.method public logParams(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    const-string v1, "LEAVE_ALL_SYSTEM_APPS_ENABLED"

    invoke-direct {p0, p1, v1, v0}, Landroid/app/admin/ManagedProfileProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOrganizationOwnedProvisioning:Z

    const-string v1, "ORGANIZATION_OWNED_PROVISIONING"

    invoke-direct {p0, p1, v1, v0}, Landroid/app/admin/ManagedProfileProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mKeepAccountOnMigration:Z

    const-string v1, "KEEP_MIGRATED_ACCOUNT"

    invoke-direct {p0, p1, v1, v0}, Landroid/app/admin/ManagedProfileProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAccountToMigrate:Landroid/accounts/Account;

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    const-string v1, "ACCOUNT_TO_MIGRATE_PROVIDED"

    invoke-direct {p0, p1, v1, v0}, Landroid/app/admin/ManagedProfileProvisioningParams;->logParam(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ManagedProfileProvisioningParams{mProfileAdminComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOwnerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOwnerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProfileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileName:Ljava/lang/String;

    const-string/jumbo v2, "null"

    if-nez v1, :cond_2b

    move-object v1, v2

    :cond_2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAccountToMigrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAccountToMigrate:Landroid/accounts/Account;

    if-nez v1, :cond_3a

    goto :goto_3b

    :cond_3a
    move-object v2, v1

    :goto_3b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLeaveAllSystemAppsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOrganizationOwnedProvisioning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOrganizationOwnedProvisioning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKeepAccountOnMigration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mKeepAccountOnMigration:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdminExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAdminExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOwnerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mProfileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAccountToMigrate:Landroid/accounts/Account;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mLeaveAllSystemAppsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mOrganizationOwnedProvisioning:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mKeepAccountOnMigration:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/app/admin/ManagedProfileProvisioningParams;->mAdminExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    return-void
.end method
