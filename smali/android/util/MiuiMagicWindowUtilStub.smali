# classes3.dex

.class public interface abstract Landroid/util/MiuiMagicWindowUtilStub;
.super Ljava/lang/Object;


# direct methods
.method public static get()Landroid/util/MiuiMagicWindowUtilStub;
    .registers 1

    const-class v0, Landroid/util/MiuiMagicWindowUtilStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MiuiMagicWindowUtilStub;

    return-object v0
.end method


# virtual methods
.method public abstract ResultActivityBehindFullscreen()Ljava/lang/String;
.end method

.method public abstract ResultActivityFullscreen()Ljava/lang/String;
.end method

.method public abstract ResultBoundIsLeft()Ljava/lang/String;
.end method

.method public abstract ResultCanPause()Ljava/lang/String;
.end method

.method public abstract ResultClearTask()Ljava/lang/String;
.end method

.method public abstract ResultDetected()Ljava/lang/String;
.end method

.method public abstract ResultExitAnimPivotX()Ljava/lang/String;
.end method

.method public abstract ResultExitAnimPivotY()Ljava/lang/String;
.end method

.method public abstract ResultExitAnimScaleToX()Ljava/lang/String;
.end method

.method public abstract ResultExitAnimScaleToY()Ljava/lang/String;
.end method

.method public abstract ResultGetRatio()Ljava/lang/String;
.end method

.method public abstract ResultInAppSplit()Ljava/lang/String;
.end method

.method public abstract ResultIsClearAnimation()Ljava/lang/String;
.end method

.method public abstract ResultIsDisableSensor()Ljava/lang/String;
.end method

.method public abstract ResultIsLeftInMW()Ljava/lang/String;
.end method

.method public abstract ResultIsMagicRotation()Ljava/lang/String;
.end method

.method public abstract ResultIsNeedScale()Ljava/lang/String;
.end method

.method public abstract ResultIsNeedSync()Ljava/lang/String;
.end method

.method public abstract ResultIsRightInMW()Ljava/lang/String;
.end method

.method public abstract ResultIsRotation180()Ljava/lang/String;
.end method

.method public abstract ResultIsShowStatusBar()Ljava/lang/String;
.end method

.method public abstract ResultLaunchFromLeftActivity()Ljava/lang/String;
.end method

.method public abstract ResultLeftMiddleOffset()Ljava/lang/String;
.end method

.method public abstract ResultLeftPoint()Ljava/lang/String;
.end method

.method public abstract ResultLeftPointOffset()Ljava/lang/String;
.end method

.method public abstract ResultMultiStack()Ljava/lang/String;
.end method

.method public abstract ResultNeedDetect()Ljava/lang/String;
.end method

.method public abstract ResultNeedSystemAnimation()Ljava/lang/String;
.end method

.method public abstract ResultOnBackPressed()Ljava/lang/String;
.end method

.method public abstract ResultOrientation()Ljava/lang/String;
.end method

.method public abstract ResultOverrideOrientation()Ljava/lang/String;
.end method

.method public abstract ResultOverrideRealConfig()Ljava/lang/String;
.end method

.method public abstract ResultRejectOrientation()Ljava/lang/String;
.end method

.method public abstract ResultResizeWhenMoveBack()Ljava/lang/String;
.end method

.method public abstract ResultRightLeftOffset()Ljava/lang/String;
.end method

.method public abstract ResultScaleEnable()Ljava/lang/String;
.end method

.method public abstract ResultShouldResumed()Ljava/lang/String;
.end method

.method public abstract ResultSplitScreen()Ljava/lang/String;
.end method

.method public abstract ResultStackVisibility()Ljava/lang/String;
.end method

.method public abstract ResultStatusbar()Ljava/lang/String;
.end method

.method public abstract ResultUpdateResource()Ljava/lang/String;
.end method

.method public abstract ResultUpdateSize()Ljava/lang/String;
.end method

.method public ResultUpdateSnapshot()Ljava/lang/String;
    .registers 2

    const-string v0, "RESULT_UPDATE_SNAPSHOT"

    return-object v0
.end method

.method public abstract ResultUpdateSysuiVisibility()Ljava/lang/String;
.end method

.method public abstract ResultUpdateTaskIntent()Ljava/lang/String;
.end method

.method public abstract ResultUpdateVisibility()Ljava/lang/String;
.end method

.method public abstract ResultViewCount()Ljava/lang/String;
.end method

.method public abstract ResultWinLocation()Ljava/lang/String;
.end method

.method public isEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isFoldDevice()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isTableDevice()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract performPolicy(I[Ljava/lang/Object;)Landroid/os/Bundle;
.end method

.method public abstract policyChangeOrientation()I
.end method

.method public abstract policyCheckActivityBehindFullscreen()I
.end method

.method public abstract policyCheckActivityFullscreen()I
.end method

.method public abstract policyClearAnimation()I
.end method

.method public abstract policyComputePivot()I
.end method

.method public abstract policyEventBackPress()I
.end method

.method public abstract policyEventFinish()I
.end method

.method public abstract policyEventResume()I
.end method

.method public abstract policyExitSplit()I
.end method

.method public policyFinishFixedRotation()I
    .registers 2

    const/16 v0, 0x5a

    return v0
.end method

.method public abstract policyGestureBackSwitchFocus()I
.end method

.method public abstract policyGetHostParam()I
.end method

.method public abstract policyGetHostResult()I
.end method

.method public abstract policyGetMagicPosition()I
.end method

.method public abstract policyGetMagicRatio()I
.end method

.method public abstract policyGetRotationAnimation()I
.end method

.method public abstract policyInAppSplit()I
.end method

.method public abstract policyIsCoverView()I
.end method

.method public abstract policyIsNeedScale()I
.end method

.method public abstract policyIsNeedSync()I
.end method

.method public abstract policyIsRotation180()I
.end method

.method public abstract policyJudgeIsRight()I
.end method

.method public abstract policyJudgeLaunchFromLeft()I
.end method

.method public abstract policyNotifyAppDied()I
.end method

.method public abstract policyResetTask()I
.end method

.method public abstract policyResizeBeforeResume()I
.end method

.method public abstract policyResizeForDrag()I
.end method

.method public abstract policyResizeWhenMoveBack()I
.end method

.method public abstract policySetFullscreen()I
.end method

.method public abstract policySetMultiStack()I
.end method

.method public abstract policySetScreenRect()I
.end method

.method public abstract policyShouldResumed()I
.end method

.method public abstract policyUpdateArgs()I
.end method

.method public abstract policyUpdateAttrs()I
.end method

.method public abstract policyUpdateConfig()I
.end method

.method public abstract policyUpdateDisplayInfo()I
.end method

.method public abstract policyUpdateFocus()I
.end method

.method public abstract policyUpdateFrame()I
.end method

.method public abstract policyUpdateHostparam()I
.end method

.method public abstract policyUpdateIntent()I
.end method

.method public abstract policyUpdateIntentFlag()I
.end method

.method public abstract policyUpdateLaunchAnimation()I
.end method

.method public abstract policyUpdateMWRoundCorner()I
.end method

.method public abstract policyUpdateMultiResume()I
.end method

.method public abstract policyUpdateMultiStack()I
.end method

.method public abstract policyUpdateOrientation()I
.end method

.method public abstract policyUpdatePageTypeByKeyEvent()I
.end method

.method public abstract policyUpdateResource()I
.end method

.method public abstract policyUpdateRotation()I
.end method

.method public abstract policyUpdateSensorChange()I
.end method

.method public policyUpdateSnapshot()I
    .registers 2

    const/16 v0, 0x5b

    return v0
.end method

.method public abstract policyUpdateSplit()I
.end method

.method public abstract policyUpdateStackVisibility()I
.end method

.method public abstract policyUpdateStatusBar()I
.end method

.method public abstract policyUpdateSysuiVisibility()I
.end method

.method public abstract policyUpdateTask()I
.end method

.method public abstract policyUpdateTaskIntent()I
.end method

.method public abstract policyUpdateTop()I
.end method

.method public abstract policyUpdateVisibility()I
.end method

.method public abstract policyUpdateWallpaper()I
.end method

.method public abstract policyUseSystemAnimation()I
.end method
