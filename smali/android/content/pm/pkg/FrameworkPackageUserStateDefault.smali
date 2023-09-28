# classes.dex

.class Landroid/content/pm/pkg/FrameworkPackageUserStateDefault;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/pm/pkg/FrameworkPackageUserState;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCeDataInode()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDisabledComponents()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDistractionFlags()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getEnabledComponents()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledState()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getHarmfulAppWarning()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstallReason()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getLastDisableAppCaller()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedLibraryOverlayPaths()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/overlay/OverlayPaths;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSplashScreenTheme()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUninstallReason()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isComponentDisabled(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isComponentEnabled(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isInstalled()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isInstantApp()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isNotLaunched()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isStopped()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isSuspended()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isVirtualPreload()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
