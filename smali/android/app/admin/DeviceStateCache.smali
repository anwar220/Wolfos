# classes.dex

.class public abstract Landroid/app/admin/DeviceStateCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/app/admin/DeviceStateCache;
    .registers 2

    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManagerInternal;->getDeviceStateCache()Landroid/app/admin/DeviceStateCache;

    move-result-object v1

    goto :goto_13

    :cond_f
    invoke-static {}, Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;->-$$Nest$sfgetINSTANCE()Landroid/app/admin/DeviceStateCache$EmptyDeviceStateCache;

    move-result-object v1

    :goto_13
    return-object v1
.end method


# virtual methods
.method public abstract isDeviceProvisioned()Z
.end method
