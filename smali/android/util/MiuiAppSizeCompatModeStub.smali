# classes3.dex

.class public interface abstract Landroid/util/MiuiAppSizeCompatModeStub;
.super Ljava/lang/Object;


# direct methods
.method public static get()Landroid/util/MiuiAppSizeCompatModeStub;
    .registers 1

    const-class v0, Landroid/util/MiuiAppSizeCompatModeStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MiuiAppSizeCompatModeStub;

    return-object v0
.end method


# virtual methods
.method public isEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isFoldScreenDevice()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isMiuiCompatLogSwitch()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isMiuiMultiwinEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isTablet()Z
.end method

.method public shouldUseMaxBoundsFullscreen(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
