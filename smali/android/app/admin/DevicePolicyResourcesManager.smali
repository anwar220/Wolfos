# classes.dex

.class public Landroid/app/admin/DevicePolicyResourcesManager;
.super Ljava/lang/Object;


# static fields
.field private static DEFAULT_DISABLE_RESOURCES_UPDATABILITY:Z

.field private static DISABLE_RESOURCES_UPDATABILITY_FLAG:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/app/admin/IDevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "DevicePolicyResourcesManager"

    sput-object v0, Landroid/app/admin/DevicePolicyResourcesManager;->TAG:Ljava/lang/String;

    const-string v0, "disable_resources_updatability"

    sput-object v0, Landroid/app/admin/DevicePolicyResourcesManager;->DISABLE_RESOURCES_UPDATABILITY_FLAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/admin/DevicePolicyResourcesManager;->DEFAULT_DISABLE_RESOURCES_UPDATABILITY:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/app/admin/IDevicePolicyManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    const-string v0, "drawableId can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "drawableStyle can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "drawableSource can\'t be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "defaultDrawableLoader can\'t be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "UNDEFINED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    sget-object v0, Landroid/app/admin/DevicePolicyResourcesManager;->DISABLE_RESOURCES_UPDATABILITY_FLAG:Ljava/lang/String;

    sget-boolean v1, Landroid/app/admin/DevicePolicyResourcesManager;->DEFAULT_DISABLE_RESOURCES_UPDATABILITY:Z

    const-string v2, "device_policy_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_52

    :cond_29
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_4d

    :try_start_2d
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v0

    if-nez v0, :cond_38

    invoke-static {p4}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_38
    iget-object v1, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p4}, Landroid/app/admin/ParcelableResource;->getDrawable(Landroid/content/Context;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3f} :catch_40

    return-object v1

    :catch_40
    move-exception v0

    sget-object v1, Landroid/app/admin/DevicePolicyResourcesManager;->TAG:Ljava/lang/String;

    const-string v2, "Error getting the updated drawable from DevicePolicyManagerService."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p4}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_4d
    invoke-static {p4}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_52
    :goto_52
    invoke-static {p4}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    const-string v0, "UNDEFINED"

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableAsIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .registers 5

    const-string v0, "UNDEFINED"

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawableAsIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableAsIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .registers 8

    const-string v0, "drawableId can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "drawableStyle can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "drawableSource can\'t be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "defaultIcon can\'t be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "UNDEFINED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    sget-object v0, Landroid/app/admin/DevicePolicyResourcesManager;->DISABLE_RESOURCES_UPDATABILITY_FLAG:Ljava/lang/String;

    sget-boolean v1, Landroid/app/admin/DevicePolicyResourcesManager;->DEFAULT_DISABLE_RESOURCES_UPDATABILITY:Z

    const-string v2, "device_policy_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_4b

    :cond_29
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_4a

    :try_start_2d
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v0

    if-nez v0, :cond_34

    return-object p4

    :cond_34
    invoke-virtual {v0}, Landroid/app/admin/ParcelableResource;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/admin/ParcelableResource;->getResourceId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_40} :catch_41

    return-object v1

    :catch_41
    move-exception v0

    sget-object v1, Landroid/app/admin/DevicePolicyResourcesManager;->TAG:Ljava/lang/String;

    const-string v2, "Error getting the updated drawable from DevicePolicyManagerService."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p4

    :cond_4a
    return-object p4

    :cond_4b
    :goto_4b
    return-object p4
.end method

.method public getDrawableForDensity(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    const-string v3, "UNDEFINED"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawableForDensity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableForDensity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    const-string v0, "drawableId can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "drawableStyle can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "drawableSource can\'t be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "defaultDrawableLoader can\'t be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "UNDEFINED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    sget-object v0, Landroid/app/admin/DevicePolicyResourcesManager;->DISABLE_RESOURCES_UPDATABILITY_FLAG:Ljava/lang/String;

    sget-boolean v1, Landroid/app/admin/DevicePolicyResourcesManager;->DEFAULT_DISABLE_RESOURCES_UPDATABILITY:Z

    const-string v2, "device_policy_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_51

    :cond_29
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_4c

    :try_start_2d
    invoke-interface {v0, p1, p2, p3}, Landroid/app/admin/IDevicePolicyManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v0

    if-nez v0, :cond_38

    invoke-static {p5}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_38
    iget-object v1, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p4, p5}, Landroid/app/admin/ParcelableResource;->getDrawable(Landroid/content/Context;ILjava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_3e} :catch_3f

    return-object v1

    :catch_3f
    move-exception v0

    sget-object v1, Landroid/app/admin/DevicePolicyResourcesManager;->TAG:Ljava/lang/String;

    const-string v2, "Error getting the updated drawable from DevicePolicyManagerService."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p5}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_4c
    invoke-static {p5}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_51
    :goto_51
    invoke-static {p5}, Landroid/app/admin/ParcelableResource;->loadDefaultDrawable(Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v0, "stringId can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "defaultStringLoader can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "UNDEFINED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    sget-object v0, Landroid/app/admin/DevicePolicyResourcesManager;->DISABLE_RESOURCES_UPDATABILITY_FLAG:Ljava/lang/String;

    sget-boolean v1, Landroid/app/admin/DevicePolicyResourcesManager;->DEFAULT_DISABLE_RESOURCES_UPDATABILITY:Z

    const-string v2, "device_policy_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_48

    :cond_20
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_43

    :try_start_24
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getString(Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v0

    if-nez v0, :cond_2f

    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2f
    iget-object v1, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Landroid/app/admin/ParcelableResource;->getString(Landroid/content/Context;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_35} :catch_36

    return-object v1

    :catch_36
    move-exception v0

    sget-object v1, Landroid/app/admin/DevicePolicyResourcesManager;->TAG:Ljava/lang/String;

    const-string v2, "Error getting the updated string from DevicePolicyManagerService."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_43
    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_48
    :goto_48
    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v0, "stringId can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "defaultStringLoader can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "UNDEFINED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    sget-object v0, Landroid/app/admin/DevicePolicyResourcesManager;->DISABLE_RESOURCES_UPDATABILITY_FLAG:Ljava/lang/String;

    sget-boolean v1, Landroid/app/admin/DevicePolicyResourcesManager;->DEFAULT_DISABLE_RESOURCES_UPDATABILITY:Z

    const-string v2, "device_policy_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_48

    :cond_20
    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_43

    :try_start_24
    invoke-interface {v0, p1}, Landroid/app/admin/IDevicePolicyManager;->getString(Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v0

    if-nez v0, :cond_2f

    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2f
    iget-object v1, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/admin/ParcelableResource;->getString(Landroid/content/Context;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_35} :catch_36

    return-object v1

    :catch_36
    move-exception v0

    sget-object v1, Landroid/app/admin/DevicePolicyResourcesManager;->TAG:Ljava/lang/String;

    const-string v2, "Error getting the updated string from DevicePolicyManagerService."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_43
    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_48
    :goto_48
    invoke-static {p2}, Landroid/app/admin/ParcelableResource;->loadDefaultString(Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resetDrawables(Ljava/util/Set;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->resetDrawables(Ljava/util/List;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_13
    :goto_13
    return-void
.end method

.method public resetStrings(Ljava/util/Set;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->resetStrings(Ljava/util/List;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_13
    :goto_13
    return-void
.end method

.method public setDrawables(Ljava/util/Set;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/admin/DevicePolicyDrawableResource;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->setDrawables(Ljava/util/List;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_13
    :goto_13
    return-void
.end method

.method public setStrings(Ljava/util/Set;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/admin/DevicePolicyStringResource;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/admin/DevicePolicyResourcesManager;->mService:Landroid/app/admin/IDevicePolicyManager;

    if-eqz v0, :cond_13

    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Landroid/app/admin/IDevicePolicyManager;->setStrings(Ljava/util/List;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_13
    :goto_13
    return-void
.end method
