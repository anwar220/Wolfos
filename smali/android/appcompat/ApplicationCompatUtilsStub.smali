# classes.dex

.class public interface abstract Landroid/appcompat/ApplicationCompatUtilsStub;
.super Ljava/lang/Object;


# static fields
.field public static final MIUI_DYNAMIC_DPI_RELAUNCH:Ljava/lang/String; = "miui.dynamic_dpi_relaunch"

.field public static final MIUI_SUPPORT_APP_CONTINUITY:Ljava/lang/String; = "miui.supportAppContinuity"


# direct methods
.method public static get()Landroid/appcompat/ApplicationCompatUtilsStub;
    .registers 1

    const-class v0, Landroid/appcompat/ApplicationCompatUtilsStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appcompat/ApplicationCompatUtilsStub;

    return-object v0
.end method


# virtual methods
.method public isAppCompatEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isContinuityEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isFoldScreenDevice()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isMiuiContinuityLogSwitch()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isMiuiMultiwinEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isMmiRunning()Z
.end method

.method public abstract isTablet()Z
.end method
