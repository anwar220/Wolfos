# classes3.dex

.class public interface abstract Landroid/util/MiuiFreeformPcUtilStub;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/MiuiFreeformPcUtilStub$SingletonHolder;
    }
.end annotation


# direct methods
.method public static getInstance()Landroid/util/MiuiFreeformPcUtilStub;
    .registers 1

    invoke-static {}, Landroid/util/MiuiFreeformPcUtilStub$SingletonHolder;->-$$Nest$sfgetINSTANCE()Landroid/util/MiuiFreeformPcUtilStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getBlackAppName()Ljava/lang/String;
.end method

.method public abstract getDecorControlKey()Ljava/lang/String;
.end method

.method public abstract getFreeFormRoundCorner()I
.end method

.method public abstract getMiuiHomeComponent()Ljava/lang/String;
.end method

.method public abstract getPcDecorCaptionViewHeight()I
.end method

.method public abstract getPcEnable()Z
.end method

.method public abstract getPcHomeComponent()Ljava/lang/String;
.end method

.method public abstract getPcLauncherServiceComponent()Ljava/lang/String;
.end method

.method public abstract getPcPackName()Ljava/lang/String;
.end method

.method public abstract getPcSystemBarHeight()I
.end method

.method public abstract getResizeModeFullBtnFull()I
.end method

.method public abstract getResizeModeFullBtnHideDecor()I
.end method

.method public abstract getResizeModeMaxBtnMax()I
.end method

.method public abstract getResizeModeMaxBtnRestore()I
.end method

.method public abstract getResizeModeNotResizable()I
.end method

.method public abstract getResizeModePcChangeStatus()I
.end method

.method public abstract getResizeModePcIntentInit()I
.end method

.method public abstract getResizeModeTwoFinger()I
.end method

.method public abstract getServicePcName()Ljava/lang/String;
.end method

.method public abstract getWindowModeFreeForm()I
.end method

.method public abstract getWindowModeFreeFormPc()I
.end method

.method public abstract isMiuiFreeformMode(I)Z
.end method

.method public abstract isPcMode(I)Z
.end method

.method public abstract isSmallWinMode(I)Z
.end method
